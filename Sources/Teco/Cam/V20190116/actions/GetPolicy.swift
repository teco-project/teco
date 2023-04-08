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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Cam {
    /// GetPolicy请求参数结构体
    public struct GetPolicyRequest: TCRequestModel {
        /// 策略Id
        public let policyId: UInt64

        public init(policyId: UInt64) {
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    /// GetPolicy返回参数结构体
    public struct GetPolicyResponse: TCResponseModel {
        /// 策略名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyName: String?

        /// 策略描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 1 表示自定义策略，2 表示预设策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: UInt64?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var addTime: Date?

        /// 最近更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date?

        /// 策略文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyDocument: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let presetAlias: String?

        /// 是否服务相关策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isServiceLinkedRolePolicy: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyName = "PolicyName"
            case description = "Description"
            case type = "Type"
            case addTime = "AddTime"
            case updateTime = "UpdateTime"
            case policyDocument = "PolicyDocument"
            case presetAlias = "PresetAlias"
            case isServiceLinkedRolePolicy = "IsServiceLinkedRolePolicy"
            case requestId = "RequestId"
        }
    }

    /// 查看策略详情
    ///
    /// 本接口（GetPolicy）可用于查询查看策略详情。
    @inlinable
    public func getPolicy(_ input: GetPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPolicyResponse> {
        self.client.execute(action: "GetPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看策略详情
    ///
    /// 本接口（GetPolicy）可用于查询查看策略详情。
    @inlinable
    public func getPolicy(_ input: GetPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPolicyResponse {
        try await self.client.execute(action: "GetPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看策略详情
    ///
    /// 本接口（GetPolicy）可用于查询查看策略详情。
    @inlinable
    public func getPolicy(policyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPolicyResponse> {
        self.getPolicy(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看策略详情
    ///
    /// 本接口（GetPolicy）可用于查询查看策略详情。
    @inlinable
    public func getPolicy(policyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPolicyResponse {
        try await self.getPolicy(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
