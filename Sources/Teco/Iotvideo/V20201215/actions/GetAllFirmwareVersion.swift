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

extension Iotvideo {
    /// 获取所有版本列表
    ///
    /// 本接口（GetAllFirmwareVersion）用于获取所有的版本列表 
    @inlinable
    public func getAllFirmwareVersion(_ input: GetAllFirmwareVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetAllFirmwareVersionResponse > {
        self.client.execute(action: "GetAllFirmwareVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取所有版本列表
    ///
    /// 本接口（GetAllFirmwareVersion）用于获取所有的版本列表 
    @inlinable
    public func getAllFirmwareVersion(_ input: GetAllFirmwareVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAllFirmwareVersionResponse {
        try await self.client.execute(action: "GetAllFirmwareVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetAllFirmwareVersion请求参数结构体
    public struct GetAllFirmwareVersionRequest: TCRequestModel {
        /// 产品ID
        public let productID: String
        
        public init (productID: String) {
            self.productID = productID
        }
        
        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
        }
    }
    
    /// GetAllFirmwareVersion返回参数结构体
    public struct GetAllFirmwareVersionResponse: TCResponseModel {
        /// 固件可用版本列表
        public let version: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case requestId = "RequestId"
        }
    }
}