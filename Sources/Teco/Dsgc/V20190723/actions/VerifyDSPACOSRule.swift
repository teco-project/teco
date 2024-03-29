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
    /// VerifyDSPACOSRule请求参数结构体
    public struct VerifyDSPACOSRuleRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 待验证COS规则
        public let cosRules: ScanTaskCOSRules

        /// 待验证数据
        public let data: String

        public init(dspaId: String, cosRules: ScanTaskCOSRules, data: String) {
            self.dspaId = dspaId
            self.cosRules = cosRules
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case cosRules = "COSRules"
            case data = "Data"
        }
    }

    /// VerifyDSPACOSRule返回参数结构体
    public struct VerifyDSPACOSRuleResponse: TCResponse {
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

    /// 验证COS分类分级规则
    @inlinable
    public func verifyDSPACOSRule(_ input: VerifyDSPACOSRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyDSPACOSRuleResponse> {
        self.client.execute(action: "VerifyDSPACOSRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证COS分类分级规则
    @inlinable
    public func verifyDSPACOSRule(_ input: VerifyDSPACOSRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyDSPACOSRuleResponse {
        try await self.client.execute(action: "VerifyDSPACOSRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证COS分类分级规则
    @inlinable
    public func verifyDSPACOSRule(dspaId: String, cosRules: ScanTaskCOSRules, data: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyDSPACOSRuleResponse> {
        self.verifyDSPACOSRule(.init(dspaId: dspaId, cosRules: cosRules, data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 验证COS分类分级规则
    @inlinable
    public func verifyDSPACOSRule(dspaId: String, cosRules: ScanTaskCOSRules, data: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyDSPACOSRuleResponse {
        try await self.verifyDSPACOSRule(.init(dspaId: dspaId, cosRules: cosRules, data: data), region: region, logger: logger, on: eventLoop)
    }
}
