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

extension Iecp {
    /// 更新边缘单元信息
    ///
    /// 更新边缘单元信息
    @inlinable
    public func modifyEdgeUnitCloudApi(_ input: ModifyEdgeUnitCloudApiRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyEdgeUnitCloudApiResponse > {
        self.client.execute(action: "ModifyEdgeUnitCloudApi", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新边缘单元信息
    ///
    /// 更新边缘单元信息
    @inlinable
    public func modifyEdgeUnitCloudApi(_ input: ModifyEdgeUnitCloudApiRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeUnitCloudApiResponse {
        try await self.client.execute(action: "ModifyEdgeUnitCloudApi", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyEdgeUnitCloudApi请求参数结构体
    public struct ModifyEdgeUnitCloudApiRequest: TCRequestModel {
        /// 边缘单元ID
        public let edgeUnitId: UInt64
        
        /// 边缘单元名称，64字符内
        public let name: String?
        
        /// 描述，200字符内
        public let description: String?
        
        /// 是否开启监控
        public let openCloudMonitor: Bool?
        
        public init (edgeUnitId: UInt64, name: String?, description: String?, openCloudMonitor: Bool?) {
            self.edgeUnitId = edgeUnitId
            self.name = name
            self.description = description
            self.openCloudMonitor = openCloudMonitor
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case name = "Name"
            case description = "Description"
            case openCloudMonitor = "OpenCloudMonitor"
        }
    }
    
    /// ModifyEdgeUnitCloudApi返回参数结构体
    public struct ModifyEdgeUnitCloudApiResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}