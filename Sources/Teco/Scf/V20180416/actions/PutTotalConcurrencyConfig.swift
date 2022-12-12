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

extension Scf {
    /// PutTotalConcurrencyConfig请求参数结构体
    public struct PutTotalConcurrencyConfigRequest: TCRequestModel {
        /// 账号并发内存配额，注：账号并发内存配额下限：用户已用并发内存总额 + 12800
        public let totalConcurrencyMem: UInt64
        
        /// 命名空间，默认为default
        public let namespace: String?
        
        public init (totalConcurrencyMem: UInt64, namespace: String? = nil) {
            self.totalConcurrencyMem = totalConcurrencyMem
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case totalConcurrencyMem = "TotalConcurrencyMem"
            case namespace = "Namespace"
        }
    }
    
    /// PutTotalConcurrencyConfig返回参数结构体
    public struct PutTotalConcurrencyConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改账号并发限制配额
    @inlinable
    public func putTotalConcurrencyConfig(_ input: PutTotalConcurrencyConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PutTotalConcurrencyConfigResponse > {
        self.client.execute(action: "PutTotalConcurrencyConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改账号并发限制配额
    @inlinable
    public func putTotalConcurrencyConfig(_ input: PutTotalConcurrencyConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutTotalConcurrencyConfigResponse {
        try await self.client.execute(action: "PutTotalConcurrencyConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
