StatusHUD
=========

自定义状态栏

progressView = [[PCProgressView alloc] initNameStr:@"正在从服务器下载图片...." maxNum:111];
  	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
				// 耗时的操作
				for (int i = 1; i<=111; i++) {
						sleep(1);
						dispatch_async(dispatch_get_main_queue(), ^{
								// 更新界面
								[progressView setProgress:i];
								NSLog(@"i=%d",i);
						});
				}
		});
