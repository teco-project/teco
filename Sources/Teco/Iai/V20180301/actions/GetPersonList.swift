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

import TecoPaginationHelpers

extension Iai {
    /// GetPersonList请求参数结构体
    public struct GetPersonListRequest: TCPaginatedRequest {
        /// 人员库ID
        public let groupId: String

        /// 起始序号，默认值为0
        public let offset: UInt64?

        /// 返回数量，默认值为10，最大值为1000
        public let limit: UInt64?

        public init(groupId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetPersonListResponse) -> GetPersonListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetPersonListRequest(groupId: self.groupId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetPersonList返回参数结构体
    public struct GetPersonListResponse: TCPaginatedResponse {
        /// 返回的人员信息
        public let personInfos: [PersonInfo]

        /// 该人员库的人员数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personNum: UInt64?

        /// 该人员库的人脸数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faceNum: UInt64?

        /// 人脸识别所用的算法模型版本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faceModelVersion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personInfos = "PersonInfos"
            case personNum = "PersonNum"
            case faceNum = "FaceNum"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PersonInfo] {
            self.personInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.personNum
        }
    }

    /// 获取人员列表
    ///
    /// 获取指定人员库中的人员列表。
    @inlinable
    public func getPersonList(_ input: GetPersonListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonListResponse> {
        self.client.execute(action: "GetPersonList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员列表
    ///
    /// 获取指定人员库中的人员列表。
    @inlinable
    public func getPersonList(_ input: GetPersonListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonListResponse {
        try await self.client.execute(action: "GetPersonList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员列表
    ///
    /// 获取指定人员库中的人员列表。
    @inlinable
    public func getPersonList(groupId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonListResponse> {
        let input = GetPersonListRequest(groupId: groupId, offset: offset, limit: limit)
        return self.client.execute(action: "GetPersonList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员列表
    ///
    /// 获取指定人员库中的人员列表。
    @inlinable
    public func getPersonList(groupId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonListResponse {
        let input = GetPersonListRequest(groupId: groupId, offset: offset, limit: limit)
        return try await self.client.execute(action: "GetPersonList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
