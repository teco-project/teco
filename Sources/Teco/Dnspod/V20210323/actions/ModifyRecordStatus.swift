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

extension Dnspod {
    /// ModifyRecordStatus请求参数结构体
    public struct ModifyRecordStatusRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 记录 ID 。可以通过接口DescribeRecordList查到所有的解析记录列表以及对应的RecordId
        public let recordId: UInt64

        /// 记录的状态。取值范围为 ENABLE 和 DISABLE。如果传入 DISABLE，解析不会生效，也不会验证负载均衡的限制。
        public let status: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, recordId: UInt64, status: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.recordId = recordId
            self.status = status
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case recordId = "RecordId"
            case status = "Status"
            case domainId = "DomainId"
        }
    }

    /// ModifyRecordStatus返回参数结构体
    public struct ModifyRecordStatusResponse: TCResponse {
        /// 记录ID。
        public let recordId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordId = "RecordId"
            case requestId = "RequestId"
        }
    }

    /// 设置记录状态
    ///
    /// 修改解析记录的状态
    @inlinable
    public func modifyRecordStatus(_ input: ModifyRecordStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordStatusResponse> {
        self.client.execute(action: "ModifyRecordStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置记录状态
    ///
    /// 修改解析记录的状态
    @inlinable
    public func modifyRecordStatus(_ input: ModifyRecordStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordStatusResponse {
        try await self.client.execute(action: "ModifyRecordStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置记录状态
    ///
    /// 修改解析记录的状态
    @inlinable
    public func modifyRecordStatus(domain: String, recordId: UInt64, status: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordStatusResponse> {
        self.modifyRecordStatus(.init(domain: domain, recordId: recordId, status: status, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置记录状态
    ///
    /// 修改解析记录的状态
    @inlinable
    public func modifyRecordStatus(domain: String, recordId: UInt64, status: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordStatusResponse {
        try await self.modifyRecordStatus(.init(domain: domain, recordId: recordId, status: status, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
