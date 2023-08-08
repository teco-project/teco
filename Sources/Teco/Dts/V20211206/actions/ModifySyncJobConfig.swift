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

extension Dts {
    /// ModifySyncJobConfig请求参数结构体
    public struct ModifySyncJobConfigRequest: TCRequestModel {
        /// 同步任务id
        public let jobId: String

        /// 修改后的同步对象
        public let dynamicObjects: Objects?

        /// 修改后的同步任务选项
        public let dynamicOptions: DynamicOptions?

        public init(jobId: String, dynamicObjects: Objects? = nil, dynamicOptions: DynamicOptions? = nil) {
            self.jobId = jobId
            self.dynamicObjects = dynamicObjects
            self.dynamicOptions = dynamicOptions
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case dynamicObjects = "DynamicObjects"
            case dynamicOptions = "DynamicOptions"
        }
    }

    /// ModifySyncJobConfig返回参数结构体
    public struct ModifySyncJobConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改同步任务配置
    ///
    /// 该接口支持在同步任务启动后修改任务的配置
    /// 修改同步配置的完整流程：修改同步任务配置->创建修改同步任务配置的校验任务->查询修改配置的校验任务的结果->启动修改配置任务
    @inlinable @discardableResult
    public func modifySyncJobConfig(_ input: ModifySyncJobConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySyncJobConfigResponse> {
        self.client.execute(action: "ModifySyncJobConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改同步任务配置
    ///
    /// 该接口支持在同步任务启动后修改任务的配置
    /// 修改同步配置的完整流程：修改同步任务配置->创建修改同步任务配置的校验任务->查询修改配置的校验任务的结果->启动修改配置任务
    @inlinable @discardableResult
    public func modifySyncJobConfig(_ input: ModifySyncJobConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySyncJobConfigResponse {
        try await self.client.execute(action: "ModifySyncJobConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改同步任务配置
    ///
    /// 该接口支持在同步任务启动后修改任务的配置
    /// 修改同步配置的完整流程：修改同步任务配置->创建修改同步任务配置的校验任务->查询修改配置的校验任务的结果->启动修改配置任务
    @inlinable @discardableResult
    public func modifySyncJobConfig(jobId: String, dynamicObjects: Objects? = nil, dynamicOptions: DynamicOptions? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySyncJobConfigResponse> {
        self.modifySyncJobConfig(.init(jobId: jobId, dynamicObjects: dynamicObjects, dynamicOptions: dynamicOptions), region: region, logger: logger, on: eventLoop)
    }

    /// 修改同步任务配置
    ///
    /// 该接口支持在同步任务启动后修改任务的配置
    /// 修改同步配置的完整流程：修改同步任务配置->创建修改同步任务配置的校验任务->查询修改配置的校验任务的结果->启动修改配置任务
    @inlinable @discardableResult
    public func modifySyncJobConfig(jobId: String, dynamicObjects: Objects? = nil, dynamicOptions: DynamicOptions? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySyncJobConfigResponse {
        try await self.modifySyncJobConfig(.init(jobId: jobId, dynamicObjects: dynamicObjects, dynamicOptions: dynamicOptions), region: region, logger: logger, on: eventLoop)
    }
}
