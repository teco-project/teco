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

extension Dnspod {
    /// DescribeRecordType请求参数结构体
    public struct DescribeRecordTypeRequest: TCRequestModel {
        /// 域名等级。
        /// + 旧套餐：D_FREE、D_PLUS、D_EXTRA、D_EXPERT、D_ULTRA 分别对应免费套餐、个人豪华、企业1、企业2、企业3。
        /// + 新套餐：DP_FREE、DP_PLUS、DP_EXTRA、DP_EXPERT、DP_ULTRA 分别对应新免费、个人专业版、企业创业版、企业标准版、企业旗舰版。
        public let domainGrade: String

        public init(domainGrade: String) {
            self.domainGrade = domainGrade
        }

        enum CodingKeys: String, CodingKey {
            case domainGrade = "DomainGrade"
        }
    }

    /// DescribeRecordType返回参数结构体
    public struct DescribeRecordTypeResponse: TCResponseModel {
        /// 记录类型列表
        public let typeList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case typeList = "TypeList"
            case requestId = "RequestId"
        }
    }

    /// 获取等级允许的记录类型
    @inlinable
    public func describeRecordType(_ input: DescribeRecordTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordTypeResponse> {
        self.client.execute(action: "DescribeRecordType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取等级允许的记录类型
    @inlinable
    public func describeRecordType(_ input: DescribeRecordTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordTypeResponse {
        try await self.client.execute(action: "DescribeRecordType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取等级允许的记录类型
    @inlinable
    public func describeRecordType(domainGrade: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordTypeResponse> {
        let input = DescribeRecordTypeRequest(domainGrade: domainGrade)
        return self.client.execute(action: "DescribeRecordType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取等级允许的记录类型
    @inlinable
    public func describeRecordType(domainGrade: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordTypeResponse {
        let input = DescribeRecordTypeRequest(domainGrade: domainGrade)
        return try await self.client.execute(action: "DescribeRecordType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
