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

extension Dbdc {
    /// ModifyInstanceName请求参数结构体
    public struct ModifyInstanceNameRequest: TCRequestModel {
        /// 独享集群实例Id
        public let instanceId: String

        /// 独享集群实例名称
        public let instanceName: String?

        public init(instanceId: String, instanceName: String? = nil) {
            self.instanceId = instanceId
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
        }
    }

    /// ModifyInstanceName返回参数结构体
    public struct ModifyInstanceNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改独享集群名称
    ///
    /// 本接口用于修改集群名称
    @inlinable @discardableResult
    public func modifyInstanceName(_ input: ModifyInstanceNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceNameResponse> {
        self.client.execute(action: "ModifyInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改独享集群名称
    ///
    /// 本接口用于修改集群名称
    @inlinable @discardableResult
    public func modifyInstanceName(_ input: ModifyInstanceNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceNameResponse {
        try await self.client.execute(action: "ModifyInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改独享集群名称
    ///
    /// 本接口用于修改集群名称
    @inlinable @discardableResult
    public func modifyInstanceName(instanceId: String, instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceNameResponse> {
        let input = ModifyInstanceNameRequest(instanceId: instanceId, instanceName: instanceName)
        return self.client.execute(action: "ModifyInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改独享集群名称
    ///
    /// 本接口用于修改集群名称
    @inlinable @discardableResult
    public func modifyInstanceName(instanceId: String, instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceNameResponse {
        let input = ModifyInstanceNameRequest(instanceId: instanceId, instanceName: instanceName)
        return try await self.client.execute(action: "ModifyInstanceName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
