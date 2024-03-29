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

extension Dasb {
    /// CreateDeviceGroup请求参数结构体
    public struct CreateDeviceGroupRequest: TCRequest {
        /// 资产组名，最大长度32字符
        public let name: String

        /// 资产组所属部门ID，如：1.2.3
        public let departmentId: String?

        public init(name: String, departmentId: String? = nil) {
            self.name = name
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case departmentId = "DepartmentId"
        }
    }

    /// CreateDeviceGroup返回参数结构体
    public struct CreateDeviceGroupResponse: TCResponse {
        /// 新建成功的资产组ID
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 新建资产组
    @inlinable
    public func createDeviceGroup(_ input: CreateDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceGroupResponse> {
        self.client.execute(action: "CreateDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建资产组
    @inlinable
    public func createDeviceGroup(_ input: CreateDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceGroupResponse {
        try await self.client.execute(action: "CreateDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建资产组
    @inlinable
    public func createDeviceGroup(name: String, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceGroupResponse> {
        self.createDeviceGroup(.init(name: name, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建资产组
    @inlinable
    public func createDeviceGroup(name: String, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceGroupResponse {
        try await self.createDeviceGroup(.init(name: name, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }
}
