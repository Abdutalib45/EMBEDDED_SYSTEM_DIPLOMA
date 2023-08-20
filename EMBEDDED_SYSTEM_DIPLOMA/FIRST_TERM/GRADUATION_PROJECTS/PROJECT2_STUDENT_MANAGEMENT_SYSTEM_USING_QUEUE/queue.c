#include <stdio.h>
#include <stdint.h>
#include "queue.h"
#include <string.h>
#include "share.h"
void queue_intialize (Queue* pq)
{
	pq->head =0;
	pq->tail =-1;
	pq->count =0;


}

status add_student_manually(Queue*pq,info*pi)
{
	int i=0;
	while(pq->arr[i].roll!=pi->roll&&i<pq->count)
    {
        i++;
    }
    if(i<pq->count)
    {
        printf("[ERROR] The Roll Number %d Is Already Existed\n------------\n",pi->roll);
        return failed;
    }
	if (queue_full(pq)==done)
	{
        printf("[ERROR] Completed\n------------\n");
		return failed;
	}
	else
	{
		pq->tail = (pq->tail+1)%MAX;
		pq->arr[pq->tail]=*pi;
		pq->count++;
		return done;
	}
}


status queue_full(Queue*pq)
{
	if(pq->count<MAX)
	{
		return failed;
	}
	return done;

}
status queue_empty(Queue*pq)
{
	if(pq->count==0)
	{
		return done;
	}
	return failed;

}

int tot_s(Queue*pq)
{
	return pq->count;
}


status find_rl(Queue*pq,int roll)
{
	int i=0;
	while(pq->arr[i].roll!=roll&&i<pq->count)
	{
		i++;
	}
	if (i<pq->count)
	{
		display(&pq->arr[i],1);
		return done;
	}
	else
	{
		return failed;
	}
}

void display(info*pi,int i)
{
    printf("The Student Details Are\nThe Roll Number is %d\nThe First Name Is %s\n",pi->roll,pi->fname);
	printf("The Last Name Is %s\n",pi->lname);
	printf("The GPA is %.02f\n",pi->GPA);
	if (i==0);
	else
	{
		for(i=0;i<5;i++)
		{
			printf("The course ID is %d\n",pi->cid[i]);
		}
	}

    printf("\n-------------\n");

}

status find_fn(Queue*pq,char*pn)
{
	int i=0;
	while (strcmp(pq->arr[i].fname,pn)!=0&&i<pq->count)
	{
		i++;
	}
	if(i<pq->count)
	{
		display(&pq->arr[i],1);
		return done;
	}
	return failed;
}

status find_c (Queue*pq,int id)
{
	int i,j,flag=0;
	for (i=0;i<pq->count;i++)
	{
		for(j=0;j<5;j++)
		{
			if(pq->arr[i].cid[j]==id)
			{
				flag++;
				display(&pq->arr[i],0);
				break;
			}
		}

	}
	if (flag==0)
		return failed;
	else
	{
		printf("[INFO] Total Number of Students Enrolled: %d\n",flag);
		return done;
	}

}


status del_s(Queue*pq,int roll)
{
	int i=0;
	while(pq->arr[i].roll!=roll&&i<pq->count)
	{
		i++;
	}
	if(i<pq->count)
	{
		for (;i<pq->count-1;i++)
		{
			pq->arr[i]=pq->arr[(i+1)%MAX];
		}
		pq->count--;
		pq->tail = (pq->tail-1+MAX)%MAX;
		return done;
	}
	return failed;
}


status up_s (Queue*pq,int roll)
{
	int i=0,choice,j;
	while(pq->arr[i].roll!=roll&&i<pq->count)
	{
		i++;
	}
	if(i<pq->count)
	{
		printf("1. first name\n2. last name\n3. roll no\n4. GPA\n5. courses\n");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1:
				printf("Enter the new first name: ");
				scanf("%s",pq->arr[i].fname);
				return done;
				break;
			case 2:
				printf("Enter the new last name: ");
				scanf("%s",pq->arr[i].lname);
				return done;
				break;
			case 3:
				printf("Enter the new roll no: ");
				scanf("%d",&pq->arr[i].roll);
				return done;
				break;
			case 4:
				printf("Enter the new GPA: ");
				scanf("%f",&pq->arr[i].GPA);
				return done;
				break;
			case 5:
				printf("Enter the new courses id: ");
				for(j=0;j<5;j++)
				{
				scanf("%d",pq->arr[i].cid[j]);
				}
				printf("[INFO] UPDATED SUCCESSFULLY");
				return done;
				break;
		}

	}
	else
	{
		printf("[ERROR] WRONG ROLL NUMBER\n");
		return failed;
	}
}


status show_s(Queue*pq)
{
	int i=0;
	if (queue_empty(pq)==done)
	{
		return failed;
	}
	else
	{
		for(i=0;i<pq->count;i++)
		{
			display(&pq->arr[i],1);
		}
		return done;
	}
}

