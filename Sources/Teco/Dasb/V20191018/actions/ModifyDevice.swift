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

import TecoCore

extension Dasb {
    /// ModifyDevice请求参数结构体
    public struct ModifyDeviceRequest: TCRequestModel {
        /// 资产记录ID
        public let id: UInt64

        /// 管理端口
        public let port: UInt64?

        /// 资产所属组ID集合
        public let groupIdSet: [UInt64]?

        /// 资产所属部门ID
        public let departmentId: String?

        public init(id: UInt64, port: UInt64? = nil, groupIdSet: [UInt64]? = nil, departmentId: String? = nil) {
            self.id = id
            self.port = port
            self.groupIdSet = groupIdSet
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case port = "Port"
            case groupIdSet = "GroupIdSet"
            case departmentId = "DepartmentId"
        }
    }

    /// ModifyDevice返回参数结构体
    public struct ModifyDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改资产信息
    @inlinable @discardableResult
    public func modifyDevice(_ input: ModifyDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDeviceResponse> {
        self.client.execute(action: "ModifyDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改资产信息
    @inlinable @discardableResult
    public func modifyDevice(_ input: ModifyDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceResponse {
        try await self.client.execute(action: "ModifyDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改资产信息
    @inlinable @discardableResult
    public func modifyDevice(id: UInt64, port: UInt64? = nil, groupIdSet: [UInt64]? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDeviceResponse> {
        self.modifyDevice(.init(id: id, port: port, groupIdSet: groupIdSet, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改资产信息
    @inlinable @discardableResult
    public func modifyDevice(id: UInt64, port: UInt64? = nil, groupIdSet: [UInt64]? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceResponse {
        try await self.modifyDevice(.init(id: id, port: port, groupIdSet: groupIdSet, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }
}
