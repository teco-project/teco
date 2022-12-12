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
    /// DetachNetworkInterface请求参数结构体
    public struct DetachNetworkInterfaceRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String
        
        /// CVM实例ID。形如：ins-r8hr2upy。
        public let instanceId: String
        
        public init (networkInterfaceId: String, instanceId: String) {
            self.networkInterfaceId = networkInterfaceId
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case instanceId = "InstanceId"
        }
    }
    
    /// DetachNetworkInterface返回参数结构体
    public struct DetachNetworkInterfaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 弹性网卡解绑云服务器
    ///
    /// 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable
    public func detachNetworkInterface(_ input: DetachNetworkInterfaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DetachNetworkInterfaceResponse > {
        self.client.execute(action: "DetachNetworkInterface", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 弹性网卡解绑云服务器
    ///
    /// 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable
    public func detachNetworkInterface(_ input: DetachNetworkInterfaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachNetworkInterfaceResponse {
        try await self.client.execute(action: "DetachNetworkInterface", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
