//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mariadb {
    /// ModifyInstanceVport请求参数结构体
    public struct ModifyInstanceVportRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 实例VPORT
        public let vport: UInt64

        public init(instanceId: String, vport: UInt64) {
            self.instanceId = instanceId
            self.vport = vport
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vport = "Vport"
        }
    }

    /// ModifyInstanceVport返回参数结构体
    public struct ModifyInstanceVportResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例VPORT
    ///
    /// 本接口（ModifyInstanceVport）用于修改实例VPORT
    @inlinable
    public func modifyInstanceVport(_ input: ModifyInstanceVportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstanceVportResponse > {
        self.client.execute(action: "ModifyInstanceVport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例VPORT
    ///
    /// 本接口（ModifyInstanceVport）用于修改实例VPORT
    @inlinable
    public func modifyInstanceVport(_ input: ModifyInstanceVportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceVportResponse {
        try await self.client.execute(action: "ModifyInstanceVport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例VPORT
    ///
    /// 本接口（ModifyInstanceVport）用于修改实例VPORT
    @inlinable
    public func modifyInstanceVport(instanceId: String, vport: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstanceVportResponse > {
        self.modifyInstanceVport(ModifyInstanceVportRequest(instanceId: instanceId, vport: vport), logger: logger, on: eventLoop)
    }

    /// 修改实例VPORT
    ///
    /// 本接口（ModifyInstanceVport）用于修改实例VPORT
    @inlinable
    public func modifyInstanceVport(instanceId: String, vport: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceVportResponse {
        try await self.modifyInstanceVport(ModifyInstanceVportRequest(instanceId: instanceId, vport: vport), logger: logger, on: eventLoop)
    }
}
