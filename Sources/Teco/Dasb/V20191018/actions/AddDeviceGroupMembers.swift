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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dasb {
    /// AddDeviceGroupMembers请求参数结构体
    public struct AddDeviceGroupMembersRequest: TCRequestModel {
        /// 资产组ID
        public let id: UInt64

        /// 需要添加到资产组的资产ID集合
        public let memberIdSet: [UInt64]

        public init(id: UInt64, memberIdSet: [UInt64]) {
            self.id = id
            self.memberIdSet = memberIdSet
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case memberIdSet = "MemberIdSet"
        }
    }

    /// AddDeviceGroupMembers返回参数结构体
    public struct AddDeviceGroupMembersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加资产组成员
    @inlinable @discardableResult
    public func addDeviceGroupMembers(_ input: AddDeviceGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDeviceGroupMembersResponse> {
        self.client.execute(action: "AddDeviceGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加资产组成员
    @inlinable @discardableResult
    public func addDeviceGroupMembers(_ input: AddDeviceGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDeviceGroupMembersResponse {
        try await self.client.execute(action: "AddDeviceGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加资产组成员
    @inlinable @discardableResult
    public func addDeviceGroupMembers(id: UInt64, memberIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDeviceGroupMembersResponse> {
        self.addDeviceGroupMembers(.init(id: id, memberIdSet: memberIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 添加资产组成员
    @inlinable @discardableResult
    public func addDeviceGroupMembers(id: UInt64, memberIdSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDeviceGroupMembersResponse {
        try await self.addDeviceGroupMembers(.init(id: id, memberIdSet: memberIdSet), region: region, logger: logger, on: eventLoop)
    }
}
