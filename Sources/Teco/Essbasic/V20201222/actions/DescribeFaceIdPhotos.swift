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

extension Essbasic {
    /// DescribeFaceIdPhotos请求参数结构体
    public struct DescribeFaceIdPhotosRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 慧眼业务ID
        public let wbAppId: String
        
        /// 订单号(orderNo); 限制在3个或以内
        public let orderNumbers: [String]
        
        public init (caller: Caller, wbAppId: String, orderNumbers: [String]) {
            self.caller = caller
            self.wbAppId = wbAppId
            self.orderNumbers = orderNumbers
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case wbAppId = "WbAppId"
            case orderNumbers = "OrderNumbers"
        }
    }
    
    /// DescribeFaceIdPhotos返回参数结构体
    public struct DescribeFaceIdPhotosResponse: TCResponseModel {
        /// 照片信息列表
        public let photos: [FaceIdPhoto]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case photos = "Photos"
            case requestId = "RequestId"
        }
    }
    
    /// 查询慧眼人脸核身照片
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼人脸核身照片
    @inlinable
    public func describeFaceIdPhotos(_ input: DescribeFaceIdPhotosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFaceIdPhotosResponse > {
        self.client.execute(action: "DescribeFaceIdPhotos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询慧眼人脸核身照片
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼人脸核身照片
    @inlinable
    public func describeFaceIdPhotos(_ input: DescribeFaceIdPhotosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFaceIdPhotosResponse {
        try await self.client.execute(action: "DescribeFaceIdPhotos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
