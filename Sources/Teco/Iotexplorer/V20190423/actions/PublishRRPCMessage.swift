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

extension Iotexplorer {
    /// 发布RRPC消息
    ///
    /// 下发RRPC消息
    @inlinable
    public func publishRRPCMessage(_ input: PublishRRPCMessageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PublishRRPCMessageResponse > {
        self.client.execute(action: "PublishRRPCMessage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发布RRPC消息
    ///
    /// 下发RRPC消息
    @inlinable
    public func publishRRPCMessage(_ input: PublishRRPCMessageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishRRPCMessageResponse {
        try await self.client.execute(action: "PublishRRPCMessage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// PublishRRPCMessage请求参数结构体
    public struct PublishRRPCMessageRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 消息内容，utf8编码
        public let payload: String
        
        public init (productId: String, deviceName: String, payload: String) {
            self.productId = productId
            self.deviceName = deviceName
            self.payload = payload
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case payload = "Payload"
        }
    }
    
    /// PublishRRPCMessage返回参数结构体
    public struct PublishRRPCMessageResponse: TCResponseModel {
        /// RRPC消息ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let messageId: Int64?
        
        /// 设备回复的消息内容，采用base64编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payloadBase64: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
            case payloadBase64 = "PayloadBase64"
            case requestId = "RequestId"
        }
    }
}