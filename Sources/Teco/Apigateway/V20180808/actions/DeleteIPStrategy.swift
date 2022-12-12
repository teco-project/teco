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

extension Apigateway {
    /// DeleteIPStrategy请求参数结构体
    public struct DeleteIPStrategyRequest: TCRequestModel {
        /// 待删除的IP策略所属的服务唯一ID。
        public let serviceId: String
        
        /// 待删除的IP策略唯一ID。
        public let strategyId: String
        
        public init (serviceId: String, strategyId: String) {
            self.serviceId = serviceId
            self.strategyId = strategyId
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case strategyId = "StrategyId"
        }
    }
    
    /// DeleteIPStrategy返回参数结构体
    public struct DeleteIPStrategyResponse: TCResponseModel {
        /// 删除操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 删除服务IP策略
    ///
    /// 本接口（DeleteIPStrategy）用于删除服务IP策略。
    @inlinable
    public func deleteIPStrategy(_ input: DeleteIPStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteIPStrategyResponse > {
        self.client.execute(action: "DeleteIPStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除服务IP策略
    ///
    /// 本接口（DeleteIPStrategy）用于删除服务IP策略。
    @inlinable
    public func deleteIPStrategy(_ input: DeleteIPStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIPStrategyResponse {
        try await self.client.execute(action: "DeleteIPStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
