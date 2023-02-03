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

extension Asr {
    /// GetCustomizationList请求参数结构体
    public struct GetCustomizationListRequest: TCRequestModel {
        /// 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        public let tagInfos: [String]?

        /// 分页大小，默认1000
        public let limit: UInt64?

        /// 分页offset，默认0
        public let offset: UInt64?

        public init(tagInfos: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.tagInfos = tagInfos
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case tagInfos = "TagInfos"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// GetCustomizationList返回参数结构体
    public struct GetCustomizationListResponse: TCResponseModel {
        /// 自学习模型数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [Model]?

        /// 自学习模型总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(_ input: GetCustomizationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomizationListResponse> {
        self.client.execute(action: "GetCustomizationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(_ input: GetCustomizationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomizationListResponse {
        try await self.client.execute(action: "GetCustomizationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(tagInfos: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomizationListResponse> {
        let input = GetCustomizationListRequest(tagInfos: tagInfos, limit: limit, offset: offset)
        return self.client.execute(action: "GetCustomizationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(tagInfos: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomizationListResponse {
        let input = GetCustomizationListRequest(tagInfos: tagInfos, limit: limit, offset: offset)
        return try await self.client.execute(action: "GetCustomizationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
