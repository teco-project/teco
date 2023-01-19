//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iai {
    /// GetGroupList请求参数结构体
    public struct GetGroupListRequest: TCRequestModel {
        /// 起始序号，默认值为0
        public let offset: UInt64?

        /// 返回数量，默认值为10，最大值为1000
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// GetGroupList返回参数结构体
    public struct GetGroupListResponse: TCResponseModel {
        /// 返回的人员库信息
        public let groupInfos: [GroupInfo]

        /// 人员库总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupNum: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupInfos = "GroupInfos"
            case groupNum = "GroupNum"
            case requestId = "RequestId"
        }
    }

    /// 获取人员库列表
    ///
    /// 获取人员库列表。
    @inlinable
    public func getGroupList(_ input: GetGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupListResponse> {
        self.client.execute(action: "GetGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员库列表
    ///
    /// 获取人员库列表。
    @inlinable
    public func getGroupList(_ input: GetGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupListResponse {
        try await self.client.execute(action: "GetGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员库列表
    ///
    /// 获取人员库列表。
    @inlinable
    public func getGroupList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupListResponse> {
        self.getGroupList(GetGroupListRequest(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员库列表
    ///
    /// 获取人员库列表。
    @inlinable
    public func getGroupList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupListResponse {
        try await self.getGroupList(GetGroupListRequest(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
