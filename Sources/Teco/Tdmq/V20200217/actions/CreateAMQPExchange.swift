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

extension Tdmq {
    /// 创建AMQP Exchange
    ///
    /// 创建AMQP Exchange
    @inlinable
    public func createAMQPExchange(_ input: CreateAMQPExchangeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAMQPExchangeResponse > {
        self.client.execute(action: "CreateAMQPExchange", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建AMQP Exchange
    ///
    /// 创建AMQP Exchange
    @inlinable
    public func createAMQPExchange(_ input: CreateAMQPExchangeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPExchangeResponse {
        try await self.client.execute(action: "CreateAMQPExchange", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAMQPExchange请求参数结构体
    public struct CreateAMQPExchangeRequest: TCRequestModel {
        /// 交换机名称，3-64个字符，只能包含字母、数字、“-”及“_”
        public let exchange: String
        
        /// 交换机所在的vhost，目前支持在单个vhost下创建主题
        public let vHosts: [String]
        
        /// 交换机类型，可选值为Direct, Fanout, Topic, x-delayed-message
        public let type: String
        
        /// 集群ID
        public let clusterId: String
        
        /// 交换机说明，最大128个字符
        public let remark: String?
        
        /// 备用交换机名称
        public let alternateExchange: String?
        
        /// 延迟交换机类型，可选值为Direct, Fanout, Topic, 不允许为x-delayed-message
        public let delayedType: String?
        
        public init (exchange: String, vHosts: [String], type: String, clusterId: String, remark: String?, alternateExchange: String?, delayedType: String?) {
            self.exchange = exchange
            self.vHosts = vHosts
            self.type = type
            self.clusterId = clusterId
            self.remark = remark
            self.alternateExchange = alternateExchange
            self.delayedType = delayedType
        }
        
        enum CodingKeys: String, CodingKey {
            case exchange = "Exchange"
            case vHosts = "VHosts"
            case type = "Type"
            case clusterId = "ClusterId"
            case remark = "Remark"
            case alternateExchange = "AlternateExchange"
            case delayedType = "DelayedType"
        }
    }
    
    /// CreateAMQPExchange返回参数结构体
    public struct CreateAMQPExchangeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}