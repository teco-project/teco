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
    /// ModifyRecordRemark请求参数结构体
    public struct ModifyRecordRemarkRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 记录 ID 。可以通过接口DescribeRecordList查到所有的解析记录列表以及对应的RecordId
        public let recordId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        /// 解析记录备注，删除备注请提交空内容。
        public let remark: String?

        public init(domain: String, recordId: UInt64, domainId: UInt64? = nil, remark: String? = nil) {
            self.domain = domain
            self.recordId = recordId
            self.domainId = domainId
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case recordId = "RecordId"
            case domainId = "DomainId"
            case remark = "Remark"
        }
    }

    /// ModifyRecordRemark返回参数结构体
    public struct ModifyRecordRemarkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置记录备注
    @inlinable
    public func modifyRecordRemark(_ input: ModifyRecordRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordRemarkResponse> {
        self.client.execute(action: "ModifyRecordRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置记录备注
    @inlinable
    public func modifyRecordRemark(_ input: ModifyRecordRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordRemarkResponse {
        try await self.client.execute(action: "ModifyRecordRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置记录备注
    @inlinable
    public func modifyRecordRemark(domain: String, recordId: UInt64, domainId: UInt64? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordRemarkResponse> {
        self.modifyRecordRemark(ModifyRecordRemarkRequest(domain: domain, recordId: recordId, domainId: domainId, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 设置记录备注
    @inlinable
    public func modifyRecordRemark(domain: String, recordId: UInt64, domainId: UInt64? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordRemarkResponse {
        try await self.modifyRecordRemark(ModifyRecordRemarkRequest(domain: domain, recordId: recordId, domainId: domainId, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
