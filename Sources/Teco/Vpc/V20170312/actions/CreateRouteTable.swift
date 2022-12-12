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
    /// CreateRouteTable请求参数结构体
    public struct CreateRouteTableRequest: TCRequestModel {
        /// 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String
        
        /// 路由表名称，最大长度不能超过60个字节。
        public let routeTableName: String
        
        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?
        
        public init (vpcId: String, routeTableName: String, tags: [Tag]? = nil) {
            self.vpcId = vpcId
            self.routeTableName = routeTableName
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case routeTableName = "RouteTableName"
            case tags = "Tags"
        }
    }
    
    /// CreateRouteTable返回参数结构体
    public struct CreateRouteTableResponse: TCResponseModel {
        /// 路由表对象。
        public let routeTable: RouteTable
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case routeTable = "RouteTable"
            case requestId = "RequestId"
        }
    }
    
    /// 创建路由表
    ///
    /// 本接口(CreateRouteTable)用于创建路由表。
    /// * 创建了VPC后，系统会创建一个默认路由表，所有新建的子网都会关联到默认路由表。默认情况下您可以直接使用默认路由表来管理您的路由策略。当您的路由策略较多时，您可以调用创建路由表接口创建更多路由表管理您的路由策略。
    /// * 创建路由表同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createRouteTable(_ input: CreateRouteTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRouteTableResponse > {
        self.client.execute(action: "CreateRouteTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建路由表
    ///
    /// 本接口(CreateRouteTable)用于创建路由表。
    /// * 创建了VPC后，系统会创建一个默认路由表，所有新建的子网都会关联到默认路由表。默认情况下您可以直接使用默认路由表来管理您的路由策略。当您的路由策略较多时，您可以调用创建路由表接口创建更多路由表管理您的路由策略。
    /// * 创建路由表同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    @inlinable
    public func createRouteTable(_ input: CreateRouteTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteTableResponse {
        try await self.client.execute(action: "CreateRouteTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
