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

extension Domain {
    /// 批量域名续费
    ///
    /// 本接口 ( RenewDomainBatch ) 用于批量续费域名 。
    @inlinable
    public func renewDomainBatch(_ input: RenewDomainBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RenewDomainBatchResponse > {
        self.client.execute(action: "RenewDomainBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量域名续费
    ///
    /// 本接口 ( RenewDomainBatch ) 用于批量续费域名 。
    @inlinable
    public func renewDomainBatch(_ input: RenewDomainBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewDomainBatchResponse {
        try await self.client.execute(action: "RenewDomainBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RenewDomainBatch请求参数结构体
    public struct RenewDomainBatchRequest: TCRequestModel {
        /// 域名续费的年限。
        public let period: Int64
        
        /// 批量续费的域名。
        public let domains: [String]
        
        /// 付费模式 0手动在线付费，1使用余额付费。
        public let payMode: Int64
        
        /// 自动续费开关。有三个可选值：
        /// 0 表示关闭，不自动续费
        /// 1 表示开启，将自动续费
        /// 2 表示不处理，保留域名原有状态（默认值）
        public let autoRenewFlag: Int64?
        
        public init (period: Int64, domains: [String], payMode: Int64, autoRenewFlag: Int64?) {
            self.period = period
            self.domains = domains
            self.payMode = payMode
            self.autoRenewFlag = autoRenewFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case domains = "Domains"
            case payMode = "PayMode"
            case autoRenewFlag = "AutoRenewFlag"
        }
    }
    
    /// RenewDomainBatch返回参数结构体
    public struct RenewDomainBatchResponse: TCResponseModel {
        /// 操作日志ID。
        public let logId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case requestId = "RequestId"
        }
    }
}