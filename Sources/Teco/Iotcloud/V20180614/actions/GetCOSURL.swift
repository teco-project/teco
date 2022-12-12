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

extension Iotcloud {
    /// GetCOSURL请求参数结构体
    public struct GetCOSURLRequest: TCRequestModel {
        /// 产品ID
        public let productID: String
        
        /// 固件版本
        public let firmwareVersion: String
        
        public init (productID: String, firmwareVersion: String) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
        }
    }
    
    /// GetCOSURL返回参数结构体
    public struct GetCOSURLResponse: TCResponseModel {
        /// 固件URL
        public let url: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }
    
    /// 获取固件下载地址
    ///
    /// 本接口（GetCOSURL）用于获取固件存储在COS的URL 
    @inlinable
    public func getCOSURL(_ input: GetCOSURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetCOSURLResponse > {
        self.client.execute(action: "GetCOSURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取固件下载地址
    ///
    /// 本接口（GetCOSURL）用于获取固件存储在COS的URL 
    @inlinable
    public func getCOSURL(_ input: GetCOSURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCOSURLResponse {
        try await self.client.execute(action: "GetCOSURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
