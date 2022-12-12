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

extension Tke {
    /// DescribeClusterControllers请求参数结构体
    public struct DescribeClusterControllersRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DescribeClusterControllers返回参数结构体
    public struct DescribeClusterControllersResponse: TCResponseModel {
        /// 描述集群中各个控制器的状态
        public let controllerStatusSet: [ControllerStatus]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case controllerStatusSet = "ControllerStatusSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询Kubernetes控制器状态
    ///
    /// 用于查询Kubernetes的各个原生控制器是否开启
    @inlinable
    public func describeClusterControllers(_ input: DescribeClusterControllersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterControllersResponse > {
        self.client.execute(action: "DescribeClusterControllers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Kubernetes控制器状态
    ///
    /// 用于查询Kubernetes的各个原生控制器是否开启
    @inlinable
    public func describeClusterControllers(_ input: DescribeClusterControllersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterControllersResponse {
        try await self.client.execute(action: "DescribeClusterControllers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
