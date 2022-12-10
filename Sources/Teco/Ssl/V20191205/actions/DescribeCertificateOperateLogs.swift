//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Ssl {
    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogs(_ input: DescribeCertificateOperateLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCertificateOperateLogsResponse > {
        self.client.execute(action: "DescribeCertificateOperateLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogs(_ input: DescribeCertificateOperateLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateOperateLogsResponse {
        try await self.client.execute(action: "DescribeCertificateOperateLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCertificateOperateLogs请求参数结构体
    public struct DescribeCertificateOperateLogsRequest: TCRequestModel {
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 请求日志数量，默认为20。
        public let limit: UInt64?
        
        /// 开始时间，默认15天前。
        public let startTime: Date?
        
        /// 结束时间，默认现在时间。
        public let endTime: Date?
        
        public init (offset: UInt64?, limit: UInt64?, startTime: Date?, endTime: Date?) {
            self.offset = offset
            self.limit = limit
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeCertificateOperateLogs返回参数结构体
    public struct DescribeCertificateOperateLogsResponse: TCResponseModel {
        /// 当前查询条件日志总数。
        public let allTotal: UInt64
        
        /// 本次请求返回的日志数量。
        public let totalCount: UInt64
        
        /// 证书操作日志列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateLogs: [OperationLog]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case allTotal = "AllTotal"
            case totalCount = "TotalCount"
            case operateLogs = "OperateLogs"
            case requestId = "RequestId"
        }
    }
}