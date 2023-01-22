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

extension Batch {
    /// AttachInstances请求参数结构体
    public struct AttachInstancesRequest: TCRequestModel {
        /// 计算环境ID
        public let envId: String

        /// 加入计算环境实例列表
        public let instances: [Instance]

        public init(envId: String, instances: [Instance]) {
            self.envId = envId
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case instances = "Instances"
        }
    }

    /// AttachInstances返回参数结构体
    public struct AttachInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加实例到计算环境
    ///
    /// 此接口可将已存在实例添加到计算环境中。
    /// 实例需要满足如下条件：<br/>
    /// 1.实例不在批量计算系统中。<br/>
    /// 2.实例状态要求处于运行中。<br/>
    /// 3.支持预付费实例，按小时后付费实例，专享子机实例。不支持竞价实例。<br/>
    ///
    /// 此接口会将加入到计算环境中的实例重设UserData和重装操作系统。
    @inlinable @discardableResult
    public func attachInstances(_ input: AttachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachInstancesResponse> {
        self.client.execute(action: "AttachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加实例到计算环境
    ///
    /// 此接口可将已存在实例添加到计算环境中。
    /// 实例需要满足如下条件：<br/>
    /// 1.实例不在批量计算系统中。<br/>
    /// 2.实例状态要求处于运行中。<br/>
    /// 3.支持预付费实例，按小时后付费实例，专享子机实例。不支持竞价实例。<br/>
    ///
    /// 此接口会将加入到计算环境中的实例重设UserData和重装操作系统。
    @inlinable @discardableResult
    public func attachInstances(_ input: AttachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachInstancesResponse {
        try await self.client.execute(action: "AttachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加实例到计算环境
    ///
    /// 此接口可将已存在实例添加到计算环境中。
    /// 实例需要满足如下条件：<br/>
    /// 1.实例不在批量计算系统中。<br/>
    /// 2.实例状态要求处于运行中。<br/>
    /// 3.支持预付费实例，按小时后付费实例，专享子机实例。不支持竞价实例。<br/>
    ///
    /// 此接口会将加入到计算环境中的实例重设UserData和重装操作系统。
    @inlinable @discardableResult
    public func attachInstances(envId: String, instances: [Instance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachInstancesResponse> {
        self.attachInstances(AttachInstancesRequest(envId: envId, instances: instances), region: region, logger: logger, on: eventLoop)
    }

    /// 添加实例到计算环境
    ///
    /// 此接口可将已存在实例添加到计算环境中。
    /// 实例需要满足如下条件：<br/>
    /// 1.实例不在批量计算系统中。<br/>
    /// 2.实例状态要求处于运行中。<br/>
    /// 3.支持预付费实例，按小时后付费实例，专享子机实例。不支持竞价实例。<br/>
    ///
    /// 此接口会将加入到计算环境中的实例重设UserData和重装操作系统。
    @inlinable @discardableResult
    public func attachInstances(envId: String, instances: [Instance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachInstancesResponse {
        try await self.attachInstances(AttachInstancesRequest(envId: envId, instances: instances), region: region, logger: logger, on: eventLoop)
    }
}
