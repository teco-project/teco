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

extension Iotvideo {
    /// 判断是否开启的转发的权限
    @inlinable
    public func checkForwardAuth(_ input: CheckForwardAuthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckForwardAuthResponse > {
        self.client.execute(action: "CheckForwardAuth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 判断是否开启的转发的权限
    @inlinable
    public func checkForwardAuth(_ input: CheckForwardAuthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckForwardAuthResponse {
        try await self.client.execute(action: "CheckForwardAuth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckForwardAuth请求参数结构体
    public struct CheckForwardAuthRequest: TCRequestModel {
        /// 控制台Skey
        public let skey: String
        
        /// 队列类型 0.CMQ  1.Ckafka
        public let queueType: UInt64
        
        public init (skey: String, queueType: UInt64) {
            self.skey = skey
            self.queueType = queueType
        }
        
        enum CodingKeys: String, CodingKey {
            case skey = "Skey"
            case queueType = "QueueType"
        }
    }
    
    /// CheckForwardAuth返回参数结构体
    public struct CheckForwardAuthResponse: TCResponseModel {
        /// 腾讯云账号
        public let endpoint: String
        
        /// 结果
        public let result: UInt64
        
        /// 产品ID
        public let productid: String
        
        /// 错误消息
        public let errMsg: String
        
        /// 队列类型 0.CMQ  1.Ckafka
        public let queueType: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case endpoint = "Endpoint"
            case result = "Result"
            case productid = "Productid"
            case errMsg = "ErrMsg"
            case queueType = "QueueType"
            case requestId = "RequestId"
        }
    }
}
