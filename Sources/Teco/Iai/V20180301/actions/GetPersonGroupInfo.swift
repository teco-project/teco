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

extension Iai {
    /// GetPersonGroupInfo请求参数结构体
    public struct GetPersonGroupInfoRequest: TCPaginatedRequest {
        /// 人员ID
        public let personId: String

        /// 起始序号，默认值为0
        public let offset: UInt64?

        /// 返回数量，默认值为10，最大值为100
        public let limit: UInt64?

        public init(personId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.personId = personId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetPersonGroupInfoResponse) -> GetPersonGroupInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(personId: self.personId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetPersonGroupInfo返回参数结构体
    public struct GetPersonGroupInfoResponse: TCPaginatedResponse {
        /// 包含此人员的人员库及描述字段内容列表
        public let personGroupInfos: [PersonGroupInfo]

        /// 人员库总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupNum: UInt64?

        /// 人脸识别服务所用的算法模型版本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let faceModelVersion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personGroupInfos = "PersonGroupInfos"
            case groupNum = "GroupNum"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PersonGroupInfo`` list from the paginated response.
        public func getItems() -> [PersonGroupInfo] {
            self.personGroupInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.groupNum
        }
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonGroupInfoResponse> {
        self.client.execute(action: "GetPersonGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonGroupInfoResponse {
        try await self.client.execute(action: "GetPersonGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(personId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPersonGroupInfoResponse> {
        self.getPersonGroupInfo(.init(personId: personId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfo(personId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPersonGroupInfoResponse {
        try await self.getPersonGroupInfo(.init(personId: personId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable
    public func getPersonGroupInfoPaginated(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PersonGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.getPersonGroupInfo, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    @inlinable @discardableResult
    public func getPersonGroupInfoPaginated(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, onResponse: @escaping (GetPersonGroupInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getPersonGroupInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取人员归属信息
    ///
    /// 获取指定人员的信息，包括加入的人员库、描述内容等。
    ///
    /// - Returns: `AsyncSequence`s of ``PersonGroupInfo`` and ``GetPersonGroupInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getPersonGroupInfoPaginator(_ input: GetPersonGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetPersonGroupInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getPersonGroupInfo, logger: logger, on: eventLoop)
    }
}
