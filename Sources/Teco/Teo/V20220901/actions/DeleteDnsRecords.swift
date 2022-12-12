//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Teo {
    /// DeleteDnsRecords请求参数结构体
    public struct DeleteDnsRecordsRequest: TCRequestModel {
        /// 待删除记录所属站点 ID。
        public let zoneId: String
        
        /// 待删除记录 ID。
        public let dnsRecordIds: [String]
        
        public init (zoneId: String, dnsRecordIds: [String]) {
            self.zoneId = zoneId
            self.dnsRecordIds = dnsRecordIds
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case dnsRecordIds = "DnsRecordIds"
        }
    }
    
    /// DeleteDnsRecords返回参数结构体
    public struct DeleteDnsRecordsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 批量删除 DNS 记录
    @inlinable
    public func deleteDnsRecords(_ input: DeleteDnsRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDnsRecordsResponse > {
        self.client.execute(action: "DeleteDnsRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量删除 DNS 记录
    @inlinable
    public func deleteDnsRecords(_ input: DeleteDnsRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDnsRecordsResponse {
        try await self.client.execute(action: "DeleteDnsRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
