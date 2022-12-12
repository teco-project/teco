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

extension Ecm {
    /// ModifyDefaultSubnet请求参数结构体
    public struct ModifyDefaultSubnetRequest: TCRequestModel {
        /// ECM地域
        public let ecmRegion: String
        
        /// ECM可用区
        public let zone: String
        
        /// 私有网络ID
        public let vpcId: String
        
        /// 子网ID
        public let subnetId: String
        
        public init (ecmRegion: String, zone: String, vpcId: String, subnetId: String) {
            self.ecmRegion = ecmRegion
            self.zone = zone
            self.vpcId = vpcId
            self.subnetId = subnetId
        }
        
        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case zone = "Zone"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }
    
    /// ModifyDefaultSubnet返回参数结构体
    public struct ModifyDefaultSubnetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改默认子网
    ///
    /// 修改在一个可用区下创建实例时使用的默认子网（创建实例时，未填写VPC参数时使用的sunbetId）
    @inlinable
    public func modifyDefaultSubnet(_ input: ModifyDefaultSubnetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDefaultSubnetResponse > {
        self.client.execute(action: "ModifyDefaultSubnet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改默认子网
    ///
    /// 修改在一个可用区下创建实例时使用的默认子网（创建实例时，未填写VPC参数时使用的sunbetId）
    @inlinable
    public func modifyDefaultSubnet(_ input: ModifyDefaultSubnetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDefaultSubnetResponse {
        try await self.client.execute(action: "ModifyDefaultSubnet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
