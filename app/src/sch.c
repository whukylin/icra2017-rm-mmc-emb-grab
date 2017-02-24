/**
 * Copyright (c) 2011-2016, Jack Mo (mobangjack@foxmail.com).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "sch.h"

static SchTask_t* list = NULL;

void Sch_Init(void)
{
	uint32_t tick = Clk_GetMsTick();
	SchTask_t* curr = list;
	for (; curr != NULL; curr = curr->next) {
		curr->lastrun = tick;
	}
}

void Sch_Proc(void)
{
	uint32_t tick = Clk_GetMsTick();
	SchTask_t* curr = list;
	for (; curr != NULL; curr = curr->next) {
		uint32_t interval = tick > curr->lastrun ? tick - curr->lastrun : (uint32_t)0xFFFFFFFF - curr->lastrun + tick;
		if (interval >= curr->interval) {
			curr->run();
			curr->lastrun = tick;
		}
	}
}

static SchTask_t* newSchTask(SchRun_t run, uint32_t interval)
{
	SchTask_t* task = (SchTask_t*)malloc(sizeof(SchTask_t));
	if (task == NULL) return NULL;
	memset(task, 0, sizeof(SchTask_t));
	task->run = run;
	task->interval = interval;
	task->next = NULL;
	return task;
}

static void freeSchTask(SchTask_t* task)
{
	if (task != NULL) {
		free(task);
		task = NULL;
	}
}

uint8_t Sch_Arrange(SchRun_t run, uint32_t interval)
{
	if (list == NULL) {
		list = newSchTask(run, interval);
		return 1;
	} else {
		SchTask_t* curr = list;
		for (; curr != NULL; curr = curr->next) {
			if (curr->run == run) {
				curr->interval = interval;
				return 1;
			}
			if (curr->next == NULL) {
				curr->next = newSchTask(run, interval);
				return curr->next ? 1 : 0;
			}
		}
		// Should never reach here
		return 0;
	}

}

uint8_t Sch_Dismiss(SchRun_t run)
{
	if (list == NULL) {
		return 0;
	} else if (list->run == run) {
		freeSchTask(list);
		return 1;
	} else {
		SchTask_t* curr = list;
		SchTask_t* prev = NULL;
		for (; curr != NULL; prev = curr, curr = curr->next) {
			if (curr->run == run) {
				prev->next = curr->next;
				freeSchTask(curr);
				return 1;
			}
		}
		return 0;
	}
}
