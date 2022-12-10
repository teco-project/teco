//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiw {
    /// 查询文档转码任务
    ///
    /// 查询文档转码任务的执行进度与转码结果
    @inlinable
    public func describeTranscode(_ input: DescribeTranscodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTranscodeResponse > {
        self.client.execute(action: "DescribeTranscode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询文档转码任务
    ///
    /// 查询文档转码任务的执行进度与转码结果
    @inlinable
    public func describeTranscode(_ input: DescribeTranscodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeResponse {
        try await self.client.execute(action: "DescribeTranscode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTranscode请求参数结构体
    public struct DescribeTranscodeRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64
        
        /// 文档转码任务的唯一标识Id
        public let taskId: String
        
        public init (sdkAppId: Int64, taskId: String) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
        }
    }
    
    /// DescribeTranscode返回参数结构体
    public struct DescribeTranscodeResponse: TCResponseModel {
        /// 文档的总页数
        public let pages: Int64
        
        /// 转码的当前进度,取值范围为0~100
        public let progress: Int64
        
        /// 文档的分辨率
        public let resolution: String
        
        /// 转码完成后结果的URL
        /// 动态转码：PPT转动态H5的链接
        /// 静态转码：文档每一页的图片URL前缀，比如，该URL前缀为`http://example.com/g0jb42ps49vtebjshilb/`，那么文档第1页的图片URL为
        /// `http://example.com/g0jb42ps49vtebjshilb/1.jpg`，其它页以此类推
        public let resultUrl: String
        
        /// 任务的当前状态
        /// - QUEUED: 正在排队等待转换
        /// - PROCESSING: 转换中
        /// - FINISHED: 转换完成
        public let status: String
        
        /// 转码任务的唯一标识Id
        public let taskId: String
        
        /// 文档的文件名
        public let title: String
        
        /// 缩略图URL前缀，比如，该URL前缀为`http://example.com/g0jb42ps49vtebjshilb/ `，那么动态PPT第1页的缩略图URL为
        /// `http://example.com/g0jb42ps49vtebjshilb/1.jpg`，其它页以此类推
        /// 如果发起文档转码请求参数中带了ThumbnailResolution参数，并且转码类型为动态转码，该参数不为空，其余情况该参数为空字符串
        public let thumbnailUrl: String
        
        /// 动态转码缩略图生成分辨率
        public let thumbnailResolution: String
        
        /// 转码压缩文件下载的URL，如果发起文档转码请求参数中`CompressFileType`为空或者不是支持的压缩格式，该参数为空字符串
        public let compressFileUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case pages = "Pages"
            case progress = "Progress"
            case resolution = "Resolution"
            case resultUrl = "ResultUrl"
            case status = "Status"
            case taskId = "TaskId"
            case title = "Title"
            case thumbnailUrl = "ThumbnailUrl"
            case thumbnailResolution = "ThumbnailResolution"
            case compressFileUrl = "CompressFileUrl"
            case requestId = "RequestId"
        }
    }
}