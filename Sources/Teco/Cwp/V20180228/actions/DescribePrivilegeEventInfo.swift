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

extension Cwp {
    /// DescribePrivilegeEventInfo请求参数结构体
    public struct DescribePrivilegeEventInfoRequest: TCRequestModel {
        /// 事件id
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribePrivilegeEventInfo返回参数结构体
    public struct DescribePrivilegeEventInfoResponse: TCResponseModel {
        /// 本地提权详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let privilegeEventInfo: PrivilegeEventInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case privilegeEventInfo = "PrivilegeEventInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询本地提权详情
    ///
    /// 本地提权信息详情
    @inlinable
    public func describePrivilegeEventInfo(_ input: DescribePrivilegeEventInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivilegeEventInfoResponse> {
        self.client.execute(action: "DescribePrivilegeEventInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地提权详情
    ///
    /// 本地提权信息详情
    @inlinable
    public func describePrivilegeEventInfo(_ input: DescribePrivilegeEventInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivilegeEventInfoResponse {
        try await self.client.execute(action: "DescribePrivilegeEventInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地提权详情
    ///
    /// 本地提权信息详情
    @inlinable
    public func describePrivilegeEventInfo(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivilegeEventInfoResponse> {
        self.describePrivilegeEventInfo(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 查询本地提权详情
    ///
    /// 本地提权信息详情
    @inlinable
    public func describePrivilegeEventInfo(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivilegeEventInfoResponse {
        try await self.describePrivilegeEventInfo(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
