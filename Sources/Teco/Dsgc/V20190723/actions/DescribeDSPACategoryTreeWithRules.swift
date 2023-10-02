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
    /// DescribeDSPACategoryTreeWithRules请求参数结构体
    public struct DescribeDSPACategoryTreeWithRulesRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 合规组模板id
        public let complianceId: UInt64

        /// 分类id
        public let categoryId: Int64?

        public init(dspaId: String, complianceId: UInt64, categoryId: Int64? = nil) {
            self.dspaId = dspaId
            self.complianceId = complianceId
            self.categoryId = categoryId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case complianceId = "ComplianceId"
            case categoryId = "CategoryId"
        }
    }

    /// DescribeDSPACategoryTreeWithRules返回参数结构体
    public struct DescribeDSPACategoryTreeWithRulesResponse: TCResponse {
        /// 分类树json
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultJson: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultJson = "ResultJson"
            case requestId = "RequestId"
        }
    }

    /// 获取分类规则树信息
    @inlinable
    public func describeDSPACategoryTreeWithRules(_ input: DescribeDSPACategoryTreeWithRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACategoryTreeWithRulesResponse> {
        self.client.execute(action: "DescribeDSPACategoryTreeWithRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类规则树信息
    @inlinable
    public func describeDSPACategoryTreeWithRules(_ input: DescribeDSPACategoryTreeWithRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACategoryTreeWithRulesResponse {
        try await self.client.execute(action: "DescribeDSPACategoryTreeWithRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类规则树信息
    @inlinable
    public func describeDSPACategoryTreeWithRules(dspaId: String, complianceId: UInt64, categoryId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACategoryTreeWithRulesResponse> {
        self.describeDSPACategoryTreeWithRules(.init(dspaId: dspaId, complianceId: complianceId, categoryId: categoryId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类规则树信息
    @inlinable
    public func describeDSPACategoryTreeWithRules(dspaId: String, complianceId: UInt64, categoryId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACategoryTreeWithRulesResponse {
        try await self.describeDSPACategoryTreeWithRules(.init(dspaId: dspaId, complianceId: complianceId, categoryId: categoryId), region: region, logger: logger, on: eventLoop)
    }
}
