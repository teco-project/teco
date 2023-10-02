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
    /// VerifyDSPADiscoveryRule请求参数结构体
    public struct VerifyDSPADiscoveryRuleRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 只能取and 、or两个值其中之一，and：字段和内容同时满足，or：字段和内容满足其一
        public let matchOperator: String

        /// 字段名包含规则，最大支持选择9项
        public let metaRule: DataRules?

        /// 内容包含规则，最大支持选择9项
        public let contentRule: DataRules?

        /// 验证规则字段名，最大长度为1024个字符
        public let verifyMeta: String?

        /// 验证规则数据内容，最大长度为1024个字符
        public let verifyContent: String?

        public init(dspaId: String, matchOperator: String, metaRule: DataRules? = nil, contentRule: DataRules? = nil, verifyMeta: String? = nil, verifyContent: String? = nil) {
            self.dspaId = dspaId
            self.matchOperator = matchOperator
            self.metaRule = metaRule
            self.contentRule = contentRule
            self.verifyMeta = verifyMeta
            self.verifyContent = verifyContent
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case matchOperator = "MatchOperator"
            case metaRule = "MetaRule"
            case contentRule = "ContentRule"
            case verifyMeta = "VerifyMeta"
            case verifyContent = "VerifyContent"
        }
    }

    /// VerifyDSPADiscoveryRule返回参数结构体
    public struct VerifyDSPADiscoveryRuleResponse: TCResponse {
        /// 验证结果
        /// Success 验证成功
        /// Failed 验证失败
        public let verifyResult: String

        /// 验证结果详情
        public let detailInfo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case verifyResult = "VerifyResult"
            case detailInfo = "DetailInfo"
            case requestId = "RequestId"
        }
    }

    /// 验证分类分级发现规则
    ///
    /// 验证分类分级规则
    @inlinable
    public func verifyDSPADiscoveryRule(_ input: VerifyDSPADiscoveryRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyDSPADiscoveryRuleResponse> {
        self.client.execute(action: "VerifyDSPADiscoveryRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证分类分级发现规则
    ///
    /// 验证分类分级规则
    @inlinable
    public func verifyDSPADiscoveryRule(_ input: VerifyDSPADiscoveryRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyDSPADiscoveryRuleResponse {
        try await self.client.execute(action: "VerifyDSPADiscoveryRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证分类分级发现规则
    ///
    /// 验证分类分级规则
    @inlinable
    public func verifyDSPADiscoveryRule(dspaId: String, matchOperator: String, metaRule: DataRules? = nil, contentRule: DataRules? = nil, verifyMeta: String? = nil, verifyContent: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyDSPADiscoveryRuleResponse> {
        self.verifyDSPADiscoveryRule(.init(dspaId: dspaId, matchOperator: matchOperator, metaRule: metaRule, contentRule: contentRule, verifyMeta: verifyMeta, verifyContent: verifyContent), region: region, logger: logger, on: eventLoop)
    }

    /// 验证分类分级发现规则
    ///
    /// 验证分类分级规则
    @inlinable
    public func verifyDSPADiscoveryRule(dspaId: String, matchOperator: String, metaRule: DataRules? = nil, contentRule: DataRules? = nil, verifyMeta: String? = nil, verifyContent: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyDSPADiscoveryRuleResponse {
        try await self.verifyDSPADiscoveryRule(.init(dspaId: dspaId, matchOperator: matchOperator, metaRule: metaRule, contentRule: contentRule, verifyMeta: verifyMeta, verifyContent: verifyContent), region: region, logger: logger, on: eventLoop)
    }
}