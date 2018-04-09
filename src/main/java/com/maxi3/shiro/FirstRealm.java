/// * */ package com.maxi3.shiro;
/// * */
/// * */ import org.apache.shiro.authc.AuthenticationException;
/// * */ import org.apache.shiro.authc.AuthenticationInfo;
/// * */ import org.apache.shiro.authc.AuthenticationToken;
/// * */ import org.apache.shiro.authc.credential.CredentialsMatcher;
/// * */ import org.apache.shiro.authz.AuthorizationInfo;
/// * */ import org.apache.shiro.cache.CacheManager;
/// * */ import org.apache.shiro.realm.AuthorizingRealm;
/// * */ import org.apache.shiro.subject.PrincipalCollection;
/// * */
/// * */ public class FirstRealm
/// * */ extends AuthorizingRealm
/// * */ {
/// * */ public FirstRealm() {}
/// * */
/// * */ public FirstRealm(CacheManager cacheManager)
/// * */ {
/// * 19 */ super(cacheManager);
/// * */ }
/// * */
/// * */ public FirstRealm(CredentialsMatcher matcher)
/// * */ {
/// * 24 */ super(matcher);
/// * */ }
/// * */
/// * */ public FirstRealm(CacheManager cacheManager, CredentialsMatcher
/// matcher)
/// * */ {
/// * 29 */ super(cacheManager, matcher);
/// * */ }
/// * */
/// * */
/// * */
/// * */ protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection
/// arg0)
/// * */ {
/// * 36 */ return null;
/// * */ }
/// * */
/// * */ protected AuthenticationInfo
/// doGetAuthenticationInfo(AuthenticationToken arg0)
/// * */ throws AuthenticationException
/// * */ {
/// * 42 */ return null;
/// * */ }
/// * */ }
//
//
/// * Location:
/// X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\shiro\FirstRealm.class
// * Java compiler version: 8 (52.0)
// * JD-Core Version: 0.7.1
// */