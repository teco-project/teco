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

extension Lcic {
    /// DescribeDocumentsByRoom请求参数结构体
    public struct DescribeDocumentsByRoomRequest: TCRequestModel {
        /// 房间ID。
        public let roomId: UInt64

        /// 低代码互动课堂的SdkAppId
        public let sdkAppId: UInt64

        /// 分页查询当前页数，从1开始递增，默认值为1
        public let page: Int64?

        /// 每页数据量，最大1000，默认值为100
        public let limit: Int64?

        /// 课件权限。
        /// [0]：获取owner的私有课件；
        /// [1]：获取owner的公开课件;
        /// [0,1]：则获取owner的私有课件和公开课件；
        /// [2]：获取owner的私有课件和所有人(包括owner)的公开课件。
        /// 默认值为[2]
        public let permission: [UInt64]?

        /// 文档所有者的user_id，不填默认获取SdkAppId下所有课件
        public let owner: String?

        public init(roomId: UInt64, sdkAppId: UInt64, page: Int64? = nil, limit: Int64? = nil, permission: [UInt64]? = nil, owner: String? = nil) {
            self.roomId = roomId
            self.sdkAppId = sdkAppId
            self.page = page
            self.limit = limit
            self.permission = permission
            self.owner = owner
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
            case page = "Page"
            case limit = "Limit"
            case permission = "Permission"
            case owner = "Owner"
        }
    }

    /// DescribeDocumentsByRoom返回参数结构体
    public struct DescribeDocumentsByRoomResponse: TCResponseModel {
        /// 文档信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let documents: [DocumentInfo]?

        /// 符合查询条件文档总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case documents = "Documents"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取指定房间下文档
    ///
    /// 此接口获取指定房间下课件列表
    @inlinable
    public func describeDocumentsByRoom(_ input: DescribeDocumentsByRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentsByRoomResponse> {
        self.client.execute(action: "DescribeDocumentsByRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取指定房间下文档
    ///
    /// 此接口获取指定房间下课件列表
    @inlinable
    public func describeDocumentsByRoom(_ input: DescribeDocumentsByRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentsByRoomResponse {
        try await self.client.execute(action: "DescribeDocumentsByRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取指定房间下文档
    ///
    /// 此接口获取指定房间下课件列表
    @inlinable
    public func describeDocumentsByRoom(roomId: UInt64, sdkAppId: UInt64, page: Int64? = nil, limit: Int64? = nil, permission: [UInt64]? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentsByRoomResponse> {
        self.describeDocumentsByRoom(.init(roomId: roomId, sdkAppId: sdkAppId, page: page, limit: limit, permission: permission, owner: owner), region: region, logger: logger, on: eventLoop)
    }

    /// 获取指定房间下文档
    ///
    /// 此接口获取指定房间下课件列表
    @inlinable
    public func describeDocumentsByRoom(roomId: UInt64, sdkAppId: UInt64, page: Int64? = nil, limit: Int64? = nil, permission: [UInt64]? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentsByRoomResponse {
        try await self.describeDocumentsByRoom(.init(roomId: roomId, sdkAppId: sdkAppId, page: page, limit: limit, permission: permission, owner: owner), region: region, logger: logger, on: eventLoop)
    }
}
