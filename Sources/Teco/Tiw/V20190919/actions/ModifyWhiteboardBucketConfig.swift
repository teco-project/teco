//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Tiw {
    /// ModifyWhiteboardBucketConfig请求参数结构体
    public struct ModifyWhiteboardBucketConfigRequest: TCRequest {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 需要查询的任务类型
        /// recording: 实时录制
        /// transcode: 文档转码
        public let taskType: String

        /// COS存储桶名字
        public let bucketName: String

        /// COS存储桶地域
        public let bucketLocation: String

        /// 存储桶里资源前缀
        public let bucketPrefix: String

        /// 返回Url域名
        public let resultDomain: String

        public init(sdkAppId: Int64, taskType: String, bucketName: String, bucketLocation: String, bucketPrefix: String, resultDomain: String) {
            self.sdkAppId = sdkAppId
            self.taskType = taskType
            self.bucketName = bucketName
            self.bucketLocation = bucketLocation
            self.bucketPrefix = bucketPrefix
            self.resultDomain = resultDomain
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskType = "TaskType"
            case bucketName = "BucketName"
            case bucketLocation = "BucketLocation"
            case bucketPrefix = "BucketPrefix"
            case resultDomain = "ResultDomain"
        }
    }

    /// ModifyWhiteboardBucketConfig返回参数结构体
    public struct ModifyWhiteboardBucketConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置应用资源存储桶配置
    ///
    /// 设置文档转码，实时录制存储桶的配置
    @inlinable @discardableResult
    public func modifyWhiteboardBucketConfig(_ input: ModifyWhiteboardBucketConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWhiteboardBucketConfigResponse> {
        self.client.execute(action: "ModifyWhiteboardBucketConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置应用资源存储桶配置
    ///
    /// 设置文档转码，实时录制存储桶的配置
    @inlinable @discardableResult
    public func modifyWhiteboardBucketConfig(_ input: ModifyWhiteboardBucketConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWhiteboardBucketConfigResponse {
        try await self.client.execute(action: "ModifyWhiteboardBucketConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置应用资源存储桶配置
    ///
    /// 设置文档转码，实时录制存储桶的配置
    @inlinable @discardableResult
    public func modifyWhiteboardBucketConfig(sdkAppId: Int64, taskType: String, bucketName: String, bucketLocation: String, bucketPrefix: String, resultDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWhiteboardBucketConfigResponse> {
        self.modifyWhiteboardBucketConfig(.init(sdkAppId: sdkAppId, taskType: taskType, bucketName: bucketName, bucketLocation: bucketLocation, bucketPrefix: bucketPrefix, resultDomain: resultDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 设置应用资源存储桶配置
    ///
    /// 设置文档转码，实时录制存储桶的配置
    @inlinable @discardableResult
    public func modifyWhiteboardBucketConfig(sdkAppId: Int64, taskType: String, bucketName: String, bucketLocation: String, bucketPrefix: String, resultDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWhiteboardBucketConfigResponse {
        try await self.modifyWhiteboardBucketConfig(.init(sdkAppId: sdkAppId, taskType: taskType, bucketName: bucketName, bucketLocation: bucketLocation, bucketPrefix: bucketPrefix, resultDomain: resultDomain), region: region, logger: logger, on: eventLoop)
    }
}
