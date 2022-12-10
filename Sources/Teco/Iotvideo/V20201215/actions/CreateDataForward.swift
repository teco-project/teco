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
    /// 创建数据转发
    @inlinable
    public func createDataForward(_ input: CreateDataForwardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDataForwardResponse > {
        self.client.execute(action: "CreateDataForward", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建数据转发
    @inlinable
    public func createDataForward(_ input: CreateDataForwardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataForwardResponse {
        try await self.client.execute(action: "CreateDataForward", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDataForward请求参数结构体
    public struct CreateDataForwardRequest: TCRequestModel {
        /// 产品ID。
        public let productId: String
        
        /// 转发地址。如果有鉴权Token，则需要自行传入，例如 [{\"forward\":{\"api\":\"http://123.207.117.108:1080/sub.php\",\"token\":\"testtoken\"}}]
        public let forwardAddr: String
        
        /// 1-数据信息转发 2-设备上下线状态转发 3-数据信息转发&设备上下线状态转发
        public let dataChose: Int64?
        
        public init (productId: String, forwardAddr: String, dataChose: Int64?) {
            self.productId = productId
            self.forwardAddr = forwardAddr
            self.dataChose = dataChose
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case forwardAddr = "ForwardAddr"
            case dataChose = "DataChose"
        }
    }
    
    /// CreateDataForward返回参数结构体
    public struct CreateDataForwardResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
