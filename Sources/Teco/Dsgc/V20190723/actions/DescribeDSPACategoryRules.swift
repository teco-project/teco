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

extension Dsgc {
    /// DescribeDSPACategoryRules请求参数结构体
    public struct DescribeDSPACategoryRulesRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 分类id
        public let categoryId: UInt64

        /// 合规组模板id
        public let complianceId: UInt64

        public init(dspaId: String, categoryId: UInt64, complianceId: UInt64) {
            self.dspaId = dspaId
            self.categoryId = categoryId
            self.complianceId = complianceId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case categoryId = "CategoryId"
            case complianceId = "ComplianceId"
        }
    }

    /// DescribeDSPACategoryRules返回参数结构体
    public struct DescribeDSPACategoryRulesResponse: TCResponse {
        /// 分类规则信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryRules: [CategoryRule]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case categoryRules = "CategoryRules"
            case requestId = "RequestId"
        }
    }

    /// 获取合规组分类规则信息
    @inlinable
    public func describeDSPACategoryRules(_ input: DescribeDSPACategoryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACategoryRulesResponse> {
        self.client.execute(action: "DescribeDSPACategoryRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取合规组分类规则信息
    @inlinable
    public func describeDSPACategoryRules(_ input: DescribeDSPACategoryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACategoryRulesResponse {
        try await self.client.execute(action: "DescribeDSPACategoryRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取合规组分类规则信息
    @inlinable
    public func describeDSPACategoryRules(dspaId: String, categoryId: UInt64, complianceId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACategoryRulesResponse> {
        self.describeDSPACategoryRules(.init(dspaId: dspaId, categoryId: categoryId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取合规组分类规则信息
    @inlinable
    public func describeDSPACategoryRules(dspaId: String, categoryId: UInt64, complianceId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACategoryRulesResponse {
        try await self.describeDSPACategoryRules(.init(dspaId: dspaId, categoryId: categoryId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }
}
