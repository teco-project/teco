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

extension Iotvideo {
    /// DescribeBindUsr请求参数结构体
    public struct DescribeBindUsrRequest: TCRequestModel {
        /// 设备TID
        public let tid: String

        /// 设备主人的AccessId
        public let accessId: String?

        public init(tid: String, accessId: String? = nil) {
            self.tid = tid
            self.accessId = accessId
        }

        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case accessId = "AccessId"
        }
    }

    /// DescribeBindUsr返回参数结构体
    public struct DescribeBindUsrResponse: TCResponseModel {
        /// 具有绑定关系的终端用户信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [BindUsrInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询设备绑定的终端用户列表
    ///
    /// 本接口（DescribeBindUsr）用于查询设备被分享的所有用户列表。
    @inlinable
    public func describeBindUsr(_ input: DescribeBindUsrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindUsrResponse> {
        self.client.execute(action: "DescribeBindUsr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备绑定的终端用户列表
    ///
    /// 本接口（DescribeBindUsr）用于查询设备被分享的所有用户列表。
    @inlinable
    public func describeBindUsr(_ input: DescribeBindUsrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindUsrResponse {
        try await self.client.execute(action: "DescribeBindUsr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备绑定的终端用户列表
    ///
    /// 本接口（DescribeBindUsr）用于查询设备被分享的所有用户列表。
    @inlinable
    public func describeBindUsr(tid: String, accessId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindUsrResponse> {
        self.describeBindUsr(.init(tid: tid, accessId: accessId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备绑定的终端用户列表
    ///
    /// 本接口（DescribeBindUsr）用于查询设备被分享的所有用户列表。
    @inlinable
    public func describeBindUsr(tid: String, accessId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindUsrResponse {
        try await self.describeBindUsr(.init(tid: tid, accessId: accessId), region: region, logger: logger, on: eventLoop)
    }
}
