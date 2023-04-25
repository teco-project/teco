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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ssa {
    /// DescribeComplianceDetail请求参数结构体
    public struct DescribeComplianceDetailRequest: TCRequestModel {
        /// 检查项uuid
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeComplianceDetail返回参数结构体
    public struct DescribeComplianceDetailResponse: TCResponseModel {
        /// 合规管理检查项详情
        public let checkConfigDetail: ComplianceCheckDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case checkConfigDetail = "CheckConfigDetail"
            case requestId = "RequestId"
        }
    }

    /// 合规管理检查项详情
    @inlinable
    public func describeComplianceDetail(_ input: DescribeComplianceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceDetailResponse> {
        self.client.execute(action: "DescribeComplianceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合规管理检查项详情
    @inlinable
    public func describeComplianceDetail(_ input: DescribeComplianceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceDetailResponse {
        try await self.client.execute(action: "DescribeComplianceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合规管理检查项详情
    @inlinable
    public func describeComplianceDetail(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceDetailResponse> {
        self.describeComplianceDetail(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 合规管理检查项详情
    @inlinable
    public func describeComplianceDetail(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceDetailResponse {
        try await self.describeComplianceDetail(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
