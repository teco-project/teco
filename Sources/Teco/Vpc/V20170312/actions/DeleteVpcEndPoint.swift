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

extension Vpc {
    /// 删除终端节点
    ///
    /// 删除终端节点。
    @inlinable
    public func deleteVpcEndPoint(_ input: DeleteVpcEndPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVpcEndPointResponse > {
        self.client.execute(action: "DeleteVpcEndPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除终端节点
    ///
    /// 删除终端节点。
    @inlinable
    public func deleteVpcEndPoint(_ input: DeleteVpcEndPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndPointResponse {
        try await self.client.execute(action: "DeleteVpcEndPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteVpcEndPoint请求参数结构体
    public struct DeleteVpcEndPointRequest: TCRequestModel {
        /// 终端节点ID。
        public let endPointId: String
        
        public init (endPointId: String) {
            self.endPointId = endPointId
        }
        
        enum CodingKeys: String, CodingKey {
            case endPointId = "EndPointId"
        }
    }
    
    /// DeleteVpcEndPoint返回参数结构体
    public struct DeleteVpcEndPointResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}