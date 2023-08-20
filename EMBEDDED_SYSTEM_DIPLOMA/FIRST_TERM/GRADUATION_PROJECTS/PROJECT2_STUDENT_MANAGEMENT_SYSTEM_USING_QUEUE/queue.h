#ifndef Queue_H
#define Queue_H
#define MAX 50
typedef struct info {
	char fname[50];
	char lname[50];
	int roll;
	float GPA;
	int cid[10];
}info;
typedef struct Queue {

	info arr[50];
	int head;
	int tail;
	int count;
}Queue;

typedef enum status{
	done,
	failed
}status;
void queue_intialize (Queue* pq);
status add_student_manually(Queue*pq,info*pi);
status queue_full(Queue*pq);
status queue_empty(Queue*pq);
int tot_s(Queue*pq);
status find_rl(Queue*pq,int roll);
void display(info*pi,int i);
status find_fn(Queue*pq,char*pn);
status find_c (Queue*pq,int id);
status del_s(Queue*pq,int roll);
status up_s (Queue*pq,int roll);
status show_s(Queue*pq);


#endif
