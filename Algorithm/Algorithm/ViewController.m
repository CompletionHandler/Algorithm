//
//  ViewController.m
//  Algorithm
//
//  Created by cy on 07/09/2017.
//  Copyright © 2017 com.jiemu.test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

///对以下一组数据进行降序排序（冒泡排序）。“24，17，85，13，9，54，76，45，5，63”
void buddleSortWithDes(){
    int array[10] = {24, 17, 85, 13, 9, 54, 76, 45, 5, 63};
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10-i-1 ; j++) {
            if (array[j+1] > array[j]) {
                int sum = array[j] + array[j+1];
                array[j+1] = sum - array[j+1];
                array[j] = sum - array[j];
            }
        }
    }
    printf("buddleSortWithDes: ");
    for (int i = 0; i <= 9; i++) {
        printf("%d,", array[i]);
    }
    printf("\n");
}

///对以下一组数据进行升序排序（插入排序）。“86, 37, 56, 29, 92, 73, 15, 63, 30, 8”
void straigthInsetSortAsc(){
    int array[10] = {86, 37, 56, 29, 92, 73, 15, 63, 30, 8};
    for (int i = 1; i < 10; i++) {
        for (int j = 0; j < i; j++) {
            if (array[i]<array[j]) {
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
    printf("straigthInsetSortAsc: ");
    for (int i = 0; i <= 9; i++) {
        printf("%d,", array[i]);
    }
    printf("\n");
}

///对以下一组数据进行升序排序（选择排序）。“86, 37, 56, 29, 92, 73, 15, 63, 30, 8”
void selectedSortWithAsc(){
    int array[10] = {86, 37, 56, 29, 92, 73, 15, 63, 30, 8};
    for (int i = 0; i < 10; i++) {
        for (int j = i+1; j < 10; j++) {
            if (array[j]<array[i]) {
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
    printf("selectedSortWithAsc: ");
    for (int i = 0; i <= 9; i++) {
        printf("%d,", array[i]);
    }
    printf("\n");
}

void quickSort(int *array, int left, int rigth){
    if (left >= rigth) {
        return;
    }
    int leftValue = array[left];
    int leftIdx = left;
    int rightIdx = rigth;
    
    while (leftIdx < rightIdx) {
        
        while (array[rightIdx] <= leftValue && leftIdx < rightIdx) {
            rightIdx--;
        }
        array[leftIdx] = array[rightIdx];
        
        while (array[leftIdx] >= leftValue && leftIdx < rightIdx ) {
            leftIdx++;
        }
        array[rightIdx] = array[leftIdx];
    }
    
    array[leftIdx] = leftValue;
    quickSort(array, left, leftIdx-1);
    quickSort(array, leftIdx+1, rigth);
}

///对以下一组数据进行降序排序（快速排序）。“86, 37, 56, 29, 92, 73, 15, 63, 30, 8”
void quickSortWithDes(){
    int array[10] = {86, 37, 56, 29, 92, 73, 15, 63, 30, 8};
    quickSort(array, 0, 9);
    printf("quickSortWithDes: ");
    for (int i = 0; i <= 9; i++) {
        printf("%d,", array[i]);
    }
    printf("\n");
}

//二分查找:37所在的idx：8,15,29,30,37,56,63,73,86,92
void binSearch(){
    
    int array[10] = {8, 15, 29, 30, 37, 56, 63, 73, 86, 92};
    int low = 0;
    int high = 9;
    int value = 37;
    while (low<high) {
        int idx = (low+high)/2;
        if (array[idx]>value) {
            high = idx-1;
        }else if (array[idx]<value){
            low = idx+1;
        }else{
            printf("binSearch: %d",idx);
            break;
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
