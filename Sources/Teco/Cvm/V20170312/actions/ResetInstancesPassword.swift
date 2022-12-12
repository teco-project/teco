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

extension Cvm {
    /// ResetInstancesPassword请求参数结构体
    public struct ResetInstancesPasswordRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。每次请求允许操作的实例数量上限是100。
        public let instanceIds: [String]
        
        /// 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        /// Linux 实例密码必须8-30位，推荐使用12位以上密码，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：<br><li>小写字母：[a-z]<br><li>大写字母：[A-Z]<br><li>数字：0-9<br><li>特殊字符： ()\`\~!@#$%^&\*-+=\_|{}[]:;'<>,.?/
        /// Windows 实例密码必须12\~30位，不能以“/”开头且不包括用户名，至少包含以下字符中的三种不同字符<br><li>小写字母：[a-z]<br><li>大写字母：[A-Z]<br><li>数字： 0-9<br><li>特殊字符：()\`\~!@#$%^&\*-+=\_|{}[]:;' <>,.?/<br><li>如果实例即包含 `Linux` 实例又包含 `Windows` 实例，则密码复杂度限制按照 `Windows` 实例的限制。
        public let password: String
        
        /// 待重置密码的实例操作系统的用户名。不得超过64个字符。
        public let userName: String?
        
        /// 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再重置用户密码。取值范围：<br><li>TRUE：表示在正常关机失败后进行强制关机<br><li>FALSE：表示在正常关机失败后不进行强制关机<br><br>默认取值：FALSE。<br><br>强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        public let forceStop: Bool?
        
        public init (instanceIds: [String], password: String, userName: String? = nil, forceStop: Bool? = nil) {
            self.instanceIds = instanceIds
            self.password = password
            self.userName = userName
            self.forceStop = forceStop
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case password = "Password"
            case userName = "UserName"
            case forceStop = "ForceStop"
        }
    }
    
    /// ResetInstancesPassword返回参数结构体
    public struct ResetInstancesPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 重置实例密码
    ///
    /// 本接口 (ResetInstancesPassword) 用于将实例操作系统的密码重置为用户指定的密码。
    /// *如果是修改系统管理云密码：实例的操作系统不同，管理员帐号也会不一样(`Windows`为`Administrator`，`Ubuntu`为`ubuntu`，其它系统为`root`)。
    /// * 重置处于运行中状态的实例密码，需要设置关机参数`ForceStop`为`TRUE`。如果没有显式指定强制关机参数，则只有处于关机状态的实例才允许执行重置密码操作。
    /// * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为100。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func resetInstancesPassword(_ input: ResetInstancesPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResetInstancesPasswordResponse > {
        self.client.execute(action: "ResetInstancesPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重置实例密码
    ///
    /// 本接口 (ResetInstancesPassword) 用于将实例操作系统的密码重置为用户指定的密码。
    /// *如果是修改系统管理云密码：实例的操作系统不同，管理员帐号也会不一样(`Windows`为`Administrator`，`Ubuntu`为`ubuntu`，其它系统为`root`)。
    /// * 重置处于运行中状态的实例密码，需要设置关机参数`ForceStop`为`TRUE`。如果没有显式指定强制关机参数，则只有处于关机状态的实例才允许执行重置密码操作。
    /// * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为100。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable
    public func resetInstancesPassword(_ input: ResetInstancesPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesPasswordResponse {
        try await self.client.execute(action: "ResetInstancesPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
