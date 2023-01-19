//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeRecord请求参数结构体
    public struct DescribeRecordRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 记录 ID 。可以通过接口DescribeRecordList查到所有的解析记录列表以及对应的RecordId
        public let recordId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, recordId: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.recordId = recordId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case recordId = "RecordId"
            case domainId = "DomainId"
        }
    }

    /// DescribeRecord返回参数结构体
    public struct DescribeRecordResponse: TCResponseModel {
        /// 记录信息
        public let recordInfo: RecordInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordInfo = "RecordInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取记录信息
    @inlinable
    public func describeRecord(_ input: DescribeRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordResponse> {
        self.client.execute(action: "DescribeRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取记录信息
    @inlinable
    public func describeRecord(_ input: DescribeRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordResponse {
        try await self.client.execute(action: "DescribeRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取记录信息
    @inlinable
    public func describeRecord(domain: String, recordId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordResponse> {
        self.describeRecord(DescribeRecordRequest(domain: domain, recordId: recordId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取记录信息
    @inlinable
    public func describeRecord(domain: String, recordId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordResponse {
        try await self.describeRecord(DescribeRecordRequest(domain: domain, recordId: recordId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
