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

extension Dayu {
    /// 绑定IP到高防包实例
    ///
    /// 绑定IP到高防包实例，支持独享包、共享包；需要注意的是此接口绑定或解绑IP是异步接口，当处于绑定或解绑中时，则不允许再进行绑定或解绑，需要等待当前绑定或解绑完成。
    @inlinable
    public func createBoundIP(_ input: CreateBoundIPRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBoundIPResponse > {
        self.client.execute(action: "CreateBoundIP", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定IP到高防包实例
    ///
    /// 绑定IP到高防包实例，支持独享包、共享包；需要注意的是此接口绑定或解绑IP是异步接口，当处于绑定或解绑中时，则不允许再进行绑定或解绑，需要等待当前绑定或解绑完成。
    @inlinable
    public func createBoundIP(_ input: CreateBoundIPRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBoundIPResponse {
        try await self.client.execute(action: "CreateBoundIP", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateBoundIP请求参数结构体
    public struct CreateBoundIPRequest: TCRequestModel {
        /// 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包）
        public let business: String
        
        /// 资源实例ID
        public let id: String
        
        /// 绑定到资源实例的IP数组，当资源实例为高防包(独享包)时，数组只允许填1个IP；当没有要绑定的IP时可以为空数组；但是BoundDevList和UnBoundDevList至少有一个不为空；
        public let boundDevList: [BoundIpInfo]?
        
        /// 与资源实例解绑的IP数组，当资源实例为高防包(独享包)时，数组只允许填1个IP；当没有要解绑的IP时可以为空数组；但是BoundDevList和UnBoundDevList至少有一个不为空；
        public let unBoundDevList: [BoundIpInfo]?
        
        /// 已弃用，不填
        public let copyPolicy: String?
        
        public init (business: String, id: String, boundDevList: [BoundIpInfo]?, unBoundDevList: [BoundIpInfo]?, copyPolicy: String?) {
            self.business = business
            self.id = id
            self.boundDevList = boundDevList
            self.unBoundDevList = unBoundDevList
            self.copyPolicy = copyPolicy
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case boundDevList = "BoundDevList"
            case unBoundDevList = "UnBoundDevList"
            case copyPolicy = "CopyPolicy"
        }
    }
    
    /// CreateBoundIP返回参数结构体
    public struct CreateBoundIPResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }
}
