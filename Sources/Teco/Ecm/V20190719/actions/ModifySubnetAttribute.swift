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

extension Ecm {
    /// 修改子网属性
    ///
    /// 修改子网属性
    @inlinable
    public func modifySubnetAttribute(_ input: ModifySubnetAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySubnetAttributeResponse > {
        self.client.execute(action: "ModifySubnetAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改子网属性
    ///
    /// 修改子网属性
    @inlinable
    public func modifySubnetAttribute(_ input: ModifySubnetAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetAttributeResponse {
        try await self.client.execute(action: "ModifySubnetAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySubnetAttribute请求参数结构体
    public struct ModifySubnetAttributeRequest: TCRequestModel {
        /// 子网实例ID。形如：subnet-pxir56ns。
        public let subnetId: String
        
        /// ECM 地域
        public let ecmRegion: String
        
        /// 子网名称，最大长度不能超过60个字节。
        public let subnetName: String?
        
        /// 子网是否开启广播。
        public let enableBroadcast: String?
        
        /// 子网的标签键值
        public let tags: [Tag]?
        
        public init (subnetId: String, ecmRegion: String, subnetName: String?, enableBroadcast: String?, tags: [Tag]?) {
            self.subnetId = subnetId
            self.ecmRegion = ecmRegion
            self.subnetName = subnetName
            self.enableBroadcast = enableBroadcast
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
            case ecmRegion = "EcmRegion"
            case subnetName = "SubnetName"
            case enableBroadcast = "EnableBroadcast"
            case tags = "Tags"
        }
    }
    
    /// ModifySubnetAttribute返回参数结构体
    public struct ModifySubnetAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}