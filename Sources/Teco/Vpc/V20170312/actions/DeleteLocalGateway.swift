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

extension Vpc {
    /// 删除本地网关
    ///
    /// 该接口用于删除CDC的本地网关。
    @inlinable
    public func deleteLocalGateway(_ input: DeleteLocalGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLocalGatewayResponse > {
        self.client.execute(action: "DeleteLocalGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除本地网关
    ///
    /// 该接口用于删除CDC的本地网关。
    @inlinable
    public func deleteLocalGateway(_ input: DeleteLocalGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLocalGatewayResponse {
        try await self.client.execute(action: "DeleteLocalGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLocalGateway请求参数结构体
    public struct DeleteLocalGatewayRequest: TCRequestModel {
        /// 本地网关实例ID
        public let localGatewayId: String
        
        /// CDC实例ID
        public let cdcId: String
        
        /// VPC实例ID
        public let vpcId: String?
        
        public init (localGatewayId: String, cdcId: String, vpcId: String?) {
            self.localGatewayId = localGatewayId
            self.cdcId = cdcId
            self.vpcId = vpcId
        }
        
        enum CodingKeys: String, CodingKey {
            case localGatewayId = "LocalGatewayId"
            case cdcId = "CdcId"
            case vpcId = "VpcId"
        }
    }
    
    /// DeleteLocalGateway返回参数结构体
    public struct DeleteLocalGatewayResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
