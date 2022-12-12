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

extension Tcm {
    /// DeleteMesh请求参数结构体
    public struct DeleteMeshRequest: TCRequestModel {
        /// 需要删除的MeshId
        public let meshId: String
        
        /// CLS组件是否被删除
        public let needDeleteCLS: Bool?
        
        /// TMP组件是否被删除
        public let needDeleteTMP: Bool?
        
        /// APM组件是否被删除
        public let needDeleteAPM: Bool?
        
        /// Grafana组件是否被删除
        public let needDeleteGrafana: Bool?
        
        public init (meshId: String, needDeleteCLS: Bool? = nil, needDeleteTMP: Bool? = nil, needDeleteAPM: Bool? = nil, needDeleteGrafana: Bool? = nil) {
            self.meshId = meshId
            self.needDeleteCLS = needDeleteCLS
            self.needDeleteTMP = needDeleteTMP
            self.needDeleteAPM = needDeleteAPM
            self.needDeleteGrafana = needDeleteGrafana
        }
        
        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
            case needDeleteCLS = "NeedDeleteCLS"
            case needDeleteTMP = "NeedDeleteTMP"
            case needDeleteAPM = "NeedDeleteAPM"
            case needDeleteGrafana = "NeedDeleteGrafana"
        }
    }
    
    /// DeleteMesh返回参数结构体
    public struct DeleteMeshResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除网格
    @inlinable
    public func deleteMesh(_ input: DeleteMeshRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteMeshResponse > {
        self.client.execute(action: "DeleteMesh", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除网格
    @inlinable
    public func deleteMesh(_ input: DeleteMeshRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMeshResponse {
        try await self.client.execute(action: "DeleteMesh", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
