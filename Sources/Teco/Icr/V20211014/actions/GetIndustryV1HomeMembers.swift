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

extension Icr {
    /// GetIndustryV1HomeMembers请求参数结构体
    public struct GetIndustryV1HomeMembersRequest: TCRequestModel {
        /// 无
        public let payload: GetIndustryV1HomeMembersReqPayload

        /// 无
        public let metadata: ReqMetadata?

        public init(payload: GetIndustryV1HomeMembersReqPayload, metadata: ReqMetadata? = nil) {
            self.payload = payload
            self.metadata = metadata
        }

        enum CodingKeys: String, CodingKey {
            case payload = "Payload"
            case metadata = "Metadata"
        }
    }

    /// GetIndustryV1HomeMembers返回参数结构体
    public struct GetIndustryV1HomeMembersResponse: TCResponseModel {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metadata: RspMetadata?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payload: GetIndustryV1HomeMembersRespPayload?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metadata = "Metadata"
            case payload = "Payload"
            case requestId = "RequestId"
        }
    }

    /// 获取成员列表
    ///
    /// 获取成员列表接口
    @inlinable
    public func getIndustryV1HomeMembers(_ input: GetIndustryV1HomeMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIndustryV1HomeMembersResponse> {
        self.client.execute(action: "GetIndustryV1HomeMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取成员列表
    ///
    /// 获取成员列表接口
    @inlinable
    public func getIndustryV1HomeMembers(_ input: GetIndustryV1HomeMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIndustryV1HomeMembersResponse {
        try await self.client.execute(action: "GetIndustryV1HomeMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取成员列表
    ///
    /// 获取成员列表接口
    @inlinable
    public func getIndustryV1HomeMembers(payload: GetIndustryV1HomeMembersReqPayload, metadata: ReqMetadata? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIndustryV1HomeMembersResponse> {
        let input = GetIndustryV1HomeMembersRequest(payload: payload, metadata: metadata)
        return self.client.execute(action: "GetIndustryV1HomeMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取成员列表
    ///
    /// 获取成员列表接口
    @inlinable
    public func getIndustryV1HomeMembers(payload: GetIndustryV1HomeMembersReqPayload, metadata: ReqMetadata? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIndustryV1HomeMembersResponse {
        let input = GetIndustryV1HomeMembersRequest(payload: payload, metadata: metadata)
        return try await self.client.execute(action: "GetIndustryV1HomeMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
