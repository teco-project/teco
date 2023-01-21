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

extension Ams {
    /// DescribeBizConfig请求参数结构体
    public struct DescribeBizConfigRequest: TCRequestModel {
        /// 审核业务类类型
        public let bizType: String

        public init(bizType: String) {
            self.bizType = bizType
        }

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
        }
    }

    /// DescribeBizConfig返回参数结构体
    public struct DescribeBizConfigResponse: TCResponseModel {
        /// 业务类型
        public let bizType: String

        /// 业务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizName: String?

        /// 审核范围
        public let moderationCategories: [String]

        /// 多媒体审核配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaModeration: MediaModerationConfig?

        /// 创建时间
        public let createdAt: String

        /// 更新时间
        public let updatedAt: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case bizName = "BizName"
            case moderationCategories = "ModerationCategories"
            case mediaModeration = "MediaModeration"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case requestId = "RequestId"
        }
    }

    /// 查看单个配置
    @inlinable
    public func describeBizConfig(_ input: DescribeBizConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizConfigResponse> {
        self.client.execute(action: "DescribeBizConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看单个配置
    @inlinable
    public func describeBizConfig(_ input: DescribeBizConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizConfigResponse {
        try await self.client.execute(action: "DescribeBizConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看单个配置
    @inlinable
    public func describeBizConfig(bizType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizConfigResponse> {
        self.describeBizConfig(DescribeBizConfigRequest(bizType: bizType), region: region, logger: logger, on: eventLoop)
    }

    /// 查看单个配置
    @inlinable
    public func describeBizConfig(bizType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizConfigResponse {
        try await self.describeBizConfig(DescribeBizConfigRequest(bizType: bizType), region: region, logger: logger, on: eventLoop)
    }
}
