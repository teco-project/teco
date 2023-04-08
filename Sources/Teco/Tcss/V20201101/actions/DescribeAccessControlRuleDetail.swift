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

import TecoCore

extension Tcss {
    /// DescribeAccessControlRuleDetail请求参数结构体
    public struct DescribeAccessControlRuleDetailRequest: TCRequestModel {
        /// 策略唯一id
        public let ruleId: String?

        /// 镜像id, 仅仅在事件加白的时候使用
        public let imageId: String?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(ruleId: String? = nil, imageId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.ruleId = ruleId
            self.imageId = imageId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case imageId = "ImageId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeAccessControlRuleDetail返回参数结构体
    public struct DescribeAccessControlRuleDetailResponse: TCResponseModel {
        /// 运行时策略详细信息
        public let ruleDetail: AccessControlRuleInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleDetail = "RuleDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询运行时访问控制策略详细信息
    @inlinable
    public func describeAccessControlRuleDetail(_ input: DescribeAccessControlRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessControlRuleDetailResponse> {
        self.client.execute(action: "DescribeAccessControlRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询运行时访问控制策略详细信息
    @inlinable
    public func describeAccessControlRuleDetail(_ input: DescribeAccessControlRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessControlRuleDetailResponse {
        try await self.client.execute(action: "DescribeAccessControlRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询运行时访问控制策略详细信息
    @inlinable
    public func describeAccessControlRuleDetail(ruleId: String? = nil, imageId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessControlRuleDetailResponse> {
        self.describeAccessControlRuleDetail(.init(ruleId: ruleId, imageId: imageId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询运行时访问控制策略详细信息
    @inlinable
    public func describeAccessControlRuleDetail(ruleId: String? = nil, imageId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessControlRuleDetailResponse {
        try await self.describeAccessControlRuleDetail(.init(ruleId: ruleId, imageId: imageId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
