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

extension Yunjing {
    /// 获取组件信息
    ///
    /// 本接口 (DescribeComponentInfo) 用于获取组件信息数据。
    @inlinable
    public func describeComponentInfo(_ input: DescribeComponentInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeComponentInfoResponse > {
        self.client.execute(action: "DescribeComponentInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取组件信息
    ///
    /// 本接口 (DescribeComponentInfo) 用于获取组件信息数据。
    @inlinable
    public func describeComponentInfo(_ input: DescribeComponentInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentInfoResponse {
        try await self.client.execute(action: "DescribeComponentInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeComponentInfo请求参数结构体
    public struct DescribeComponentInfoRequest: TCRequestModel {
        /// 组件ID。
        public let componentId: UInt64
        
        public init (componentId: UInt64) {
            self.componentId = componentId
        }
        
        enum CodingKeys: String, CodingKey {
            case componentId = "ComponentId"
        }
    }
    
    /// DescribeComponentInfo返回参数结构体
    public struct DescribeComponentInfoResponse: TCResponseModel {
        /// 组件ID。
        public let id: UInt64
        
        /// 组件名称。
        public let componentName: String
        
        /// 组件类型。
        /// <li>WEB：web组件</li>
        /// <li>SYSTEM：系统组件</li>
        public let componentType: String
        
        /// 组件官网。
        public let homepage: String
        
        /// 组件描述。
        public let description: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case componentName = "ComponentName"
            case componentType = "ComponentType"
            case homepage = "Homepage"
            case description = "Description"
            case requestId = "RequestId"
        }
    }
}