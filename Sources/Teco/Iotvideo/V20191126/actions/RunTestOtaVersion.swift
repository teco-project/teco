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

extension Iotvideo {
    /// 固件版本测试发布
    ///
    /// 本接口（RunTestOtaVersion）用于固件版本测试发布。
    @inlinable
    public func runTestOtaVersion(_ input: RunTestOtaVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RunTestOtaVersionResponse > {
        self.client.execute(action: "RunTestOtaVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 固件版本测试发布
    ///
    /// 本接口（RunTestOtaVersion）用于固件版本测试发布。
    @inlinable
    public func runTestOtaVersion(_ input: RunTestOtaVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunTestOtaVersionResponse {
        try await self.client.execute(action: "RunTestOtaVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RunTestOtaVersion请求参数结构体
    public struct RunTestOtaVersionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        public let otaVersion: String
        
        /// 指定可升级的设备TID
        public let tids: [String]
        
        /// 操作人
        public let `operator`: String?
        
        /// 备注信息
        public let remark: String?
        
        public init (productId: String, otaVersion: String, tids: [String], `operator`: String?, remark: String?) {
            self.productId = productId
            self.otaVersion = otaVersion
            self.tids = tids
            self.`operator` = `operator`
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case tids = "Tids"
            case `operator` = "Operator"
            case remark = "Remark"
        }
    }
    
    /// RunTestOtaVersion返回参数结构体
    public struct RunTestOtaVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}